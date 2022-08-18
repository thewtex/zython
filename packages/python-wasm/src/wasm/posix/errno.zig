pub fn keepalive() void {}
const errno = @cImport(@cInclude("errno.h"));

pub const constants = .{ .c_import = errno, .names = [_][:0]const u8{ "EBADF", "ENOENT", "ENOSYS" } };

export fn setErrno(error_number: i32) void {
    errno.errno = error_number;
}
