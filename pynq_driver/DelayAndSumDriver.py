from bitstring import Bits
from fxpmath import Fxp
from pynq import DefaultIP

class DelayAndSum(DefaultIP):
    '''
    Driver for the DelayAndSum beamformer IP.
    Values saturate if the range is exceeded.

    Attributes
    ----------
    
    # TODO: change range back to pi -pi  again (1 sign, 2 before comma, 8 bit length)
            in driver and in ip. pi corresponds to 180° not 90°. 
    
    phi: float
        Steering angle in rad. Takes values from -2pi to 2pi.
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
    '''
    
    def __init__(self, description):
        super().__init__(description=description)
        
    bindto = ['othr:hls:DelayAndSum:1.0']
    
    __PHI_OFFSET = 0x10
    __PHI_N_WORD = 8
    __PHI_DTYPE = 'fxp-s8/4'
    __PHI_UNIT = 'rad'
    
    __FC_OFFSET = 0x18
    __FC_N_WORD = 32
    __FC_DTYPE = 'fxp-s32/16'
    __FC_UNIT = 'MHz'
    
    __XPOS1_OFFSET = 0x20
    __XPOS1_N_WORD = 32
    __XPOS1_DTYPE = 'fxp-s32/16'
    __XPOS1_UNIT = 'mm'
    
    __XPOS2_OFFSET = 0x28
    __XPOS2_N_WORD = 32
    __XPOS2_DTYPE = 'fxp-s32/16'
    __XPOS2_UNIT = 'mm'
    
    __XPOS3_OFFSET = 0x30
    __XPOS3_N_WORD = 32
    __XPOS3_DTYPE = 'fxp-s32/16'
    __XPOS3_UNIT = 'mm'
    
    __XPOS4_OFFSET = 0x38
    __XPOS4_N_WORD = 32
    __XPOS4_DTYPE = 'fxp-s32/16'
    __XPOS4_UNIT = 'mm'
    
    def get_phi(self):
        _value = self.read(self.__PHI_OFFSET)
        _value = Bits(uint=_value, length=self.__PHI_N_WORD).unpack(f'int:{self.__PHI_N_WORD}')
        _value = Fxp(_value, raw=True, dtype=self.__PHI_DTYPE).astype(float)
        return _value[0]
    
    def set_phi(self, value: float):
        _value = int(Fxp(value, raw=False, dtype=self.__PHI_DTYPE).raw())
        self.write(self.__PHI_OFFSET, _value)
         
    phi = property(get_phi, set_phi)
    
    def get_fc(self):
        _value = self.read(self.__FC_OFFSET)
        _value = Bits(uint=_value, length=self.__FC_N_WORD).unpack(f'int:{self.__FC_N_WORD}')
        _value = Fxp(_value, raw=True, dtype=self.__FC_DTYPE).astype(float)
        return _value[0]
    
    def set_fc(self, value: float):
        _value = int(Fxp(value, raw=False, dtype=self.__FC_DTYPE).val)
        self.write(self.__FC_OFFSET, _value)
         
    fc = property(get_fc, set_fc)
    
    def get_xpos1(self):
        _value = self.read(self.__XPOS1_OFFSET)
        _value = Bits(uint=_value, length=self.__XPOS1_N_WORD).unpack(f'int:{self.__XPOS1_N_WORD}')
        _value = Fxp(_value, raw=True, dtype=self.__XPOS1_DTYPE).astype(float)
        return _value[0]
    
    def set_xpos1(self, value: float):
        _value = int(Fxp(value, raw=False, dtype=self.__XPOS1_DTYPE).val)
        self.write(self.__XPOS1_OFFSET, _value)
         
    xpos1 = property(get_xpos1, set_xpos1)
    
    def get_xpos2(self):
        _value = self.read(self.__XPOS2_OFFSET)
        _value = Bits(uint=_value, length=self.__XPOS2_N_WORD).unpack(f'int:{self.__XPOS2_N_WORD}')
        _value = Fxp(_value, raw=True, dtype=self.__XPOS2_DTYPE).astype(float)
        return _value[0]
    
    def set_xpos2(self, value: float):
        _value = int(Fxp(value, raw=False, dtype=self.__XPOS2_DTYPE).val)
        self.write(self.__XPOS2_OFFSET, _value)
         
    xpos2 = property(get_xpos2, set_xpos2)
    
    def get_xpos3(self):
        _value = self.read(self.__XPOS3_OFFSET)
        _value = Bits(uint=_value, length=self.__XPOS3_N_WORD).unpack(f'int:{self.__XPOS3_N_WORD}')
        _value = Fxp(_value, raw=True, dtype=self.__XPOS3_DTYPE).astype(float)
        return _value[0]
    
    def set_xpos3(self, value: float):
        _value = int(Fxp(value, raw=False, dtype=self.__XPOS3_DTYPE).val)
        self.write(self.__XPOS3_OFFSET, _value)
         
    xpos3 = property(get_xpos3, set_xpos3)
    
    def get_xpos4(self):
        _value = self.read(self.__XPOS4_OFFSET)
        _value = Bits(uint=_value, length=self.__XPOS4_N_WORD).unpack(f'int:{self.__XPOS4_N_WORD}')
        _value = Fxp(_value, raw=True, dtype=self.__XPOS4_DTYPE).astype(float)
        return _value[0]
    
    def set_xpos4(self, value: float):
        _value = int(Fxp(value, raw=False, dtype=self.__XPOS4_DTYPE).val)
        self.write(self.__XPOS4_OFFSET, _value)
         
    xpos4 = property(get_xpos4, set_xpos4)