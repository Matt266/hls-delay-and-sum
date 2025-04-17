from bitstring import Bits
from fxpmath import Fxp
from pynq import DefaultIP

from functools import partial

class DelayAndSum(DefaultIP):
    '''
    Driver for the DelayAndSum beamformer IP.
    Values saturate if the range is exceeded.

    Attributes
    ----------

    ctrl: int
        Control signals
        Bit fields:
            0=AP_START 1=AP_DONE 2=AP_IDLE 3=AP_READY 7=AUTO_RESTART 8=SW_RESET 9=INTERRUPT:
        Accessable as:
            ctrl_ap_start: bool
            ctrl_ap_done: bool
            ctrl_ap_idle: bool
            ctrl_ap_ready: bool
            ctrl_auto_restart: bool
            ctrl_sw_reset: bool
            ctrl_interrupt: bool

    gier: int 
        Global Interrupt Enable Register
        Bit fields: 
            0=Enable
        Accessable as:
        gier_enable: bool

    ip_ier: int
        IP Interrupt Enable Register
        Bit fields: 
            0=CHAN0_INT_EN 1=CHAN1_INT_EN
        Accessable as: 
            ip_ier_chan0_int_en: bool
            ip_ier_chan1_int_en: bool

    ip_isr: int
        IP Interrupt Status Register
        Bit fields:
            0=CHAN0_INT_ST 1=CHAN1_INT_ST
        Accessable as:
            ip_isr_chan0_int_st: bool
            ip_isr_chan1_int_st: bool

    auto_restart_counter: int
        Register for auto restart counter 0
        Bit fields: 0:32=auto_restart_counter_0

    phi: float
        Steering angle in rad. Takes values from -pi to pi.
        Broadside steering is 90°. 

    fc: float
        Frequency of the signal in MHz. 
        Use the center frequency of the RF band: e.g. 
        OTHR 5G band: 3.7GHz to 3.8GHz --> fc = 3.75GHz 

    xpos1: float
        Position of the first antenna (ADCA) along the x-axis in mm.

    xpos2: float
        Position of the second antenna (ADCB) along the x-axis in mm.
    
    xpos3: float
        Position of the third antenna (ADCC) along the x-axis in mm.

    xpos4: float
        Position of the fourth antenna (ADCD) along the x-axis in mm.

    axis_packet_size: int
        Number of 16bit words that are combined to one axi stream packet.
        (tlast will be asserted on the last word of a package) 

    invert_channel: int
        Register with bitflags to invert single input/output axi stream channels. 
            E.g., the RFSoC4x2 has an inverse connection to ADCD, which can be corrected
            for MTS with this feature. 
        Bit fields: 
            0=INVERT_IN1_REAL, 1=INVERT_IN1_IMAG, 2=INVERT_IN2_REAL, 3=INVERT_IN2_IMAG,
            4=INVERT_IN3_REAL, 5=INVERT_IN3_IMAG, 6=INVERT_IN4_REAL, 7=INVERT_IN4_IMAG,
            8=ONVERT_OUT_REAL, 9=INVERT_OUT_IMAG
        Accessable as: 
            invert_in1_real: bool
            invert_in1_imag: bool
            invert_in2_real: bool
            invert_in2_imag: bool
            invert_in3_real: bool
            invert_in3_imag: bool
            invert_in4_real: bool
            invert_in4_imag: bool
            invert_out_real: bool
            invert_out_imag: bool
    '''
    
    def __init__(self, description):
        super().__init__(description=description)
        
    bindto = ['othr:hls:DelayAndSum:2.1']

    __CTRL_OFFSET = 0x00
    __CTRL_LEN = 32
    __CTRL_DTYPE = 'fxp-u32/0'
    __CTRL_AP_START = (1<<0)
    __CTRL_AP_DONE = (1<<1)
    __CTRL_AP_IDLE = (1<<2)
    __CTRL_AP_READY = (1<<3)
    __CTRL_AUTO_RESTART = (1<<7)
    __CTRL_SW_RESET = (1<<8)
    __CTRL_INTERRUPT = (1<<9)

    __GIER_OFFSET = 0x04
    __GIER_LEN = 32
    __GIER_DTYPE = 'fxp-u32/0'
    __GIER_ENABLE = (1<<0)

    __IP_IER_OFFSET = 0x08
    __IP_IER_LEN = 32
    __IP_IER_DTYPE = 'fxp-u32/0'
    __IP_IER_CHAN0_INT_EN = (1<<0)
    __IP_IER_CHAN1_INT_EN = (1<<1)

    __IP_ISR_OFFSET = 0x0c
    __IP_ISR_LEN = 32
    __IP_ISR_DTYPE = 'fxp-u32/0'
    __IP_ISR_CHAN0_INT_ST = (1<<0)
    __IP_ISR_CHAN1_INT_ST = (1<<1)

    __AUTO_RESTART_COUNTER_0_OFFSET = 0x10
    __AUTO_RESTART_COUNTER_0_LEN = 32
    __AUTO_RESTART_COUNTER_0_DTYPE = 'fxp-u32/0'
    
    __PHI_OFFSET = 0x14
    __PHI_LEN = 20
    __PHI_DTYPE = 'fxp-s20/17'
    
    __FC_OFFSET = 0x1c
    __FC_LEN = 32
    __FC_DTYPE = 'fxp-s32/16'
    
    __XPOS1_OFFSET = 0x24
    __XPOS1_LEN = 32
    __XPOS1_DTYPE = 'fxp-s32/16'
    
    __XPOS2_OFFSET = 0x2c
    __XPOS2_LEN = 32
    __XPOS2_DTYPE = 'fxp-s32/16'
    
    __XPOS3_OFFSET = 0x34
    __XPOS3_LEN = 32
    __XPOS3_DTYPE = 'fxp-s32/16'
    
    __XPOS4_OFFSET = 0x3c
    __XPOS4_LEN = 32
    __XPOS4_DTYPE = 'fxp-s32/16'

    __AXIS_PACKET_SIZE_OFFSET = 0x44
    __AXIS_PACKET_SIZE_LEN = 26
    __AXIS_PACKET_SIZE_DTYPE = 'fxp-u26/0'

    __INVERT_CHANNEL_OFFSET = 0x4c
    __INVERT_CHANNEL_LEN = 10
    __INVERT_CHANNEL_DTYPE = 'fxp-u10/0'
    __INVERT_CHANNEL_INVERT_IN1_REAL = (1<<0)
    __INVERT_CHANNEL_INVERT_IN1_IMAG = (1<<1)
    __INVERT_CHANNEL_INVERT_IN2_REAL = (1<<2)
    __INVERT_CHANNEL_INVERT_IN2_IMAG = (1<<3)
    __INVERT_CHANNEL_INVERT_IN3_REAL = (1<<4)
    __INVERT_CHANNEL_INVERT_IN3_IMAG = (1<<5)
    __INVERT_CHANNEL_INVERT_IN4_REAL = (1<<6)
    __INVERT_CHANNEL_INVERT_IN4_IMAG = (1<<7)
    __INVERT_CHANNEL_INVERT_OUT_REAL = (1<<8)
    __INVERT_CHANNEL_INVERT_OUT_IMAG = (1<<9)

    def __get_register_int(self, offset, len, dtype):
        _value = self.read(offset)
        _value = Bits(uint=_value, length=len).unpack(f'int:{len}')
        _value = Fxp(_value, raw=True, dtype=dtype).astype(int).tolist()
        return _value[0]
    
    def __set_register_int(self, value: int, offset, dtype):
        _value = int(Fxp(value, raw=False, dtype=dtype).raw())
        self.write(offset, _value)

    def __get_register_uint(self, offset, len, dtype):
        _value = self.read(offset)
        _value = Bits(uint=_value, length=len).unpack(f'uint:{len}')
        _value = Fxp(_value, raw=True, dtype=dtype).astype(int).tolist()
        return _value[0]
    
    __set_register_uint = __set_register_int

    def __get_register_float(self, offset, len, dtype):
        _value = self.read(offset)
        _value = Bits(uint=_value, length=len).unpack(f'int:{len}')
        _value = Fxp(_value, raw=True, dtype=dtype).astype(float)
        return _value[0]
    
    def __set_register_float(self, value: float, offset, dtype):
        _value = int(Fxp(value, raw=False, dtype=dtype).raw())
        self.write(offset, _value)

    def __get_flag(self, register, flag):
        return bool(register.fget(self) & flag)
    
    def __set_flag(self, value: bool, register, flag):
        if value:
            register.fset(self, register.fget(self) | flag)
        else: 
            register.fset(self, register.fget(self) & (~flag))

    def __reg_property_int(offset, len, dtype, get_func = __get_register_int, set_func = __set_register_int):
        return property(partial(get_func, offset = offset, len = len, dtype = dtype), partial(set_func, offset = offset, dtype = dtype))
    
    def __reg_property_uint(offset, len, dtype, get_func = __get_register_uint, set_func = __set_register_uint):
        return property(partial(get_func, offset = offset, len = len, dtype = dtype), partial(set_func, offset = offset, dtype = dtype))
    
    def __reg_property_float(offset, len, dtype, get_func = __get_register_float, set_func = __set_register_float):
        return property(partial(get_func, offset = offset, len = len, dtype = dtype), partial(set_func, offset = offset, dtype = dtype))
    
    def __flag_property(register, flag, get_func = __get_flag, set_func = __set_flag):
        return property(partial(get_func, register = register, flag = flag), partial(set_func, register = register, flag = flag))

    ctrl = __reg_property_uint(__CTRL_OFFSET, __CTRL_LEN, __CTRL_DTYPE)
    ctrl_ap_start = __flag_property(ctrl, __CTRL_AP_START)
    ctrl_ap_done = __flag_property(ctrl, __CTRL_AP_DONE)
    ctrl_ap_idle = __flag_property(ctrl, __CTRL_AP_IDLE)
    ctrl_ap_ready = __flag_property(ctrl, __CTRL_AP_READY)
    ctrl_ap_restart = __flag_property(ctrl, __CTRL_AUTO_RESTART)
    ctrl_sw_reset = __flag_property(ctrl, __CTRL_SW_RESET)
    ctrl_interrupt = __flag_property(ctrl, __CTRL_INTERRUPT)

    gier = __reg_property_uint(__GIER_OFFSET, __GIER_LEN, __GIER_DTYPE)
    gier_enable = __flag_property(gier, __GIER_ENABLE)
         
    ip_ier = __reg_property_uint(__IP_IER_OFFSET, __IP_IER_LEN, __IP_IER_DTYPE)
    ip_ier_chan0_int_en = __flag_property(ip_ier, __IP_IER_CHAN0_INT_EN)
    ip_ier_chan1_int_en = __flag_property(ip_ier, __IP_IER_CHAN1_INT_EN)

    ip_isr = __reg_property_uint(__IP_ISR_OFFSET, __IP_ISR_LEN, __IP_ISR_DTYPE)
    ip_isr_chan0_int_st = __flag_property(ip_isr, __IP_ISR_CHAN0_INT_ST)
    ip_isr_chan1_int_st = __flag_property(ip_isr, __IP_ISR_CHAN1_INT_ST)

    auto_restart_counter = __reg_property_uint(__AUTO_RESTART_COUNTER_0_OFFSET, __AUTO_RESTART_COUNTER_0_LEN, __AUTO_RESTART_COUNTER_0_DTYPE)

    phi = __reg_property_float(__PHI_OFFSET, __PHI_LEN, __PHI_DTYPE)
    fc = __reg_property_float(__FC_OFFSET, __FC_LEN, __FC_DTYPE)
    xpos1 = __reg_property_float(__XPOS1_OFFSET, __XPOS1_LEN, __XPOS1_DTYPE)
    xpos2 = __reg_property_float(__XPOS2_OFFSET, __XPOS2_LEN, __XPOS2_DTYPE)
    xpos3 = __reg_property_float(__XPOS3_OFFSET, __XPOS3_LEN, __XPOS3_DTYPE)
    xpos4 = __reg_property_float(__XPOS4_OFFSET, __XPOS4_LEN, __XPOS4_DTYPE)
    axis_packet_size = __reg_property_uint(__AXIS_PACKET_SIZE_OFFSET, __AXIS_PACKET_SIZE_LEN, __AXIS_PACKET_SIZE_DTYPE)

    invert_channel = __reg_property_uint(__INVERT_CHANNEL_OFFSET, __INVERT_CHANNEL_LEN, __INVERT_CHANNEL_DTYPE)
    invert_in1_real = __flag_property(invert_channel, __INVERT_CHANNEL_INVERT_IN1_REAL)
    invert_in1_imag = __flag_property(invert_channel, __INVERT_CHANNEL_INVERT_IN1_IMAG)
    invert_in2_real = __flag_property(invert_channel, __INVERT_CHANNEL_INVERT_IN2_REAL)
    invert_in2_imag = __flag_property(invert_channel, __INVERT_CHANNEL_INVERT_IN2_IMAG)
    invert_in3_real = __flag_property(invert_channel, __INVERT_CHANNEL_INVERT_IN3_REAL)
    invert_in3_imag = __flag_property(invert_channel, __INVERT_CHANNEL_INVERT_IN3_IMAG)
    invert_in4_real = __flag_property(invert_channel, __INVERT_CHANNEL_INVERT_IN4_REAL)
    invert_in4_imag = __flag_property(invert_channel, __INVERT_CHANNEL_INVERT_IN4_IMAG)
    invert_out_real = __flag_property(invert_channel, __INVERT_CHANNEL_INVERT_OUT_REAL)
    invert_out_imag = __flag_property(invert_channel, __INVERT_CHANNEL_INVERT_OUT_IMAG)