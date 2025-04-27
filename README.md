Fawry Internship Task Solution
---
#  Q1
## mygrep

A mini version of the `grep` command, implemented in Bash.

This script allows you to search for a string in a text file with additional options for showing line numbers and inverting matches. It mimics basic behavior of the traditional `grep` command.

---

### Features
- Case-insensitive search.
- Show line numbers with matches (`-n` option).
- Invert match results (`-v` option).
- Combine options like `-vn` or `-nv`.
- Help menu (`--help`).

---

### Usage

```bash
./mygrep.sh [options] search_string filename
```

### Options:

-n: Show line numbers.

-v: Invert matches (show non-matching lines).

--help: Display usage information.
---
### Test Results
1. Basic Search
  ```bash
  ./mygrep.sh hello testfile.txt
  ```
 Output:
   Hello world
   HELLO AGAIN
 Screenshot:
  ![fristcase](https://github.com/ahmedibra3/mygrep/blob/main/Screenshots/case1.png)

2. Search with Line Numbers
  ```bash
    ./mygrep.sh -n hello testfile.txt
  ```
  Output:
   1:Hello world
   4:HELLO AGAIN
  Screenshot
  ![case2](https://github.com/ahmedibra3/mygrep/blob/main/Screenshots/case2.png)

3. Inverted Search with Line Numbers
   ```bash
    ./mygrep.sh -vn hello testfile.txt
  Output:
   2:This is a test
   3:another test line
   5:Don't match this line
   6:Testing one two three
  Screenshot
  ![case3](https://github.com/ahmedibra3/mygrep/blob/main/Screenshots/case3.png)

4. Missing Search String
   ```bash
    ./mygrep.sh -v testfile.txt
  Output:
   Error: Missing arguments.
    Usage: ./mygrep.sh [-n] [-v] search_string filename
    Options:
      -n    Show line numbers for each matching line
      -v    Invert match (show non-matching lines)
      --help  Display this help and exit

  Screenshot
  ![case4](https://github.com/ahmedibra3/mygrep/blob/main/Screenshots/case4(error).png)

5. To use help
   ```bash
     ./mygrep --help
   ```
   Output:
     ![helpcase](https://github.com/ahmedibra3/mygrep/blob/main/Screenshots/helpCase.png)

---
---
# Q2

##1. Verify DNS Resolution
   
   ![DnsHosts](https://github.com/ahmedibra3/mygrep/blob/main/Screenshots/DNS-servers.jpg)
   ![DNS-resolution](https://github.com/ahmedibra3/mygrep/blob/main/Screenshots/DNS-resolution.jpg)
   ![DNS resolution using Google's public DNS server](https://github.com/ahmedibra3/mygrep/blob/main/Screenshots/DNS%20resolution%20using%20Google's%20public%20DNS%20server.jpg)



   
  




















