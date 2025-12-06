* Linux treats every running program as a process.

- &, fg, bg, ctrl-z: append & to the command to run in the background. use fg to bring it back to the foreground.
- use ctrl-z to stop a running job in the foreground then use bg to resume a stopped job in the background.

- ps aux: This is the most common form.
  - a – show processes of all users
  - u – show user-friendly format
  - x – include processes not attached to a terminal
- ps: show processes attached to this terminal only.

- Linux processes can be monitored using the proc virtual filesystem and commands like ps, top, and htop. Use ps -ef for process snapshots,
- The /proc directory contains detailed process information. View specific process details with cat /proc/{PID}/status. Essential for system performance monitoring and troubleshooting.
- /proc is a virtual filesystem (procfs).
- It:

  - does not store data
  - does not take disk space
  - does not take RAM space
  - is generated dynamically by the kernel to show system information

- Process signals are communication mechanisms in Linux
- Common signals include SIGINT, SIGSTOP, SIGKILL for interrupting, pausing, or terminating processes. Example: kill -SIGSTOP 12345 suspends process with PID 12345 until SIGCONT is received

  - SIGINT → interrupt (Ctrl+C)
  - SIGSTOP → pause (uncatchable)
  - SIGKILL → force kill (uncatchable)
  - kill -SIGSTOP PID → pause
  - kill -SIGCONT PID → resume

- The kill command terminates processes in Linux by sending signals to specific Process IDs (PIDs). Use kill [signal] PID to terminate processes manually. Different signals provide various termination methods - SIGTERM for graceful shutdown, SIGKILL for forced termination.

- Process priorities use "nice" values ranging from -20 (highest priority) to +19 (lowest priority) and only root can set negative nice value. The /proc filesystem contains process information including priorities. You can view priorities with ps -eo pid,pri,user,comm and modify them using renice command.

- Process forking uses the fork() system call to create child processes from parent processes, enabling concurrent execution. Child processes are nearly perfect copies of parents with different PIDs.
- eg:

  ```c
    #include <stdio.h>
    #include <unistd.h>

    int main() {
    pid_t pid = fork(); // create a new process
        if (pid < 0) {
            printf("Fork failed!\n");
        }
        else if (pid == 0) {
            // Child process
            printf("I am the child! My PID is %d\n", getpid());
        }
        else {
            // Parent process
            printf("I am the parent! My PID is %d, child PID is %d\n", getpid(), pid);
        }
        return 0;
    }
  ```

  - output: I am the parent! My PID is 1200, child PID is 1201, I am the child! My PID is 1201


