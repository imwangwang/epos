function status = epos_enable_operation_wrapper(handle, nodeid) %#codegen
coder.cinclude('../epos.h')

hdl = cast(handle, 'like', coder.opaque('HANDLE', '0'));

status = int64(0);
status = coder.ceval('epos_enable_operation', hdl, nodeid);
