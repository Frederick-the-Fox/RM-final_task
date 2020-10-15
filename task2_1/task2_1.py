import pty
import os
import select

def mkpty():
    master1, slave = pty.openpty()
    slaveName1 = os.ttyname(slave)
    master2, slave = pty.openpty()
    slaveName2 = os.ttyname(slave)

    print ('\n slave device names:', slaveName1, slaveName2)
    return master1, master2


if __name__ == "__main__":
    master1, master2 = mkpty()
    while True:
        r, w, e = select.select([master1, master2], [], [], 1)
        for device in r:
            data = os.read(device, 128)
            print('the posttion is:',data)
            if device == master1:
                os.write(master2, data)
            else:
                os.write(master1, data)
