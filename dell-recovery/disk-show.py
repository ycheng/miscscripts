import pprint as pp
import dbus
from dbus.mainloop.glib import DBusGMainLoop
DBusGMainLoop(set_as_default=True)
import glob
import zipfile
import tarfile
import gi
gi.require_version('UDisks', '2.0')
from gi.repository import GLib, UDisks


udisks = UDisks.Client.new_sync(None)
manager = udisks.get_object_manager()

disks = []

for item in manager.get_objects():
    loop = item.get_loop()
    block = item.get_block()
    partition = item.get_partition()

    if loop or \
        partition or \
        not block or \
        block.get_cached_property("ReadOnly").get_boolean():
        continue

    device_path = block.get_cached_property("Device").get_bytestring().decode('utf-8')
    
    if device_path.startswith('/dev/nvme'):
        output = block.get_cached_property("Id").get_string()
        print(output)
        model = output.split("-")[-1].replace("_", " ")
        nvme_dev_size = block.get_cached_property("Size").unpack()
        disks.append([device_path, nvme_dev_size, "%s (%s)" % (model, device_path)])
        pp.pprint([device_path, nvme_dev_size, "%s (%s)" % (model, device_path)])

pp.pprint(disks)
