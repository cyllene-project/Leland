#if os(Linux)
import Glibc
#else
import Darwin
#endif

func fdSetCloExec(fd:Int) -> Int {
	
	if fd == -1 {
		return -1
	}
	
	let flags: Long = fcntl(fd, F_GETFD)
	
	if flags == -1 {
		return -1
	}
	
	if fnctl(fd, F_SETFD, flags | FD_CLOEXEC) == -1 {
		return -1
	}
	
	return 0	
	
}
