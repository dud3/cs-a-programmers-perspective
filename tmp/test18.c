/*
 * dsh = dshell
 * A really simple shell, it doesn't o anything yet.
 * It has a single command, exit.
 * Currntly work in progress, more comming soon...
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXLINE 50
#define MAXARGS 40

#define ANSI_COLOR_RED     "\x1b[31m"
#define ANSI_COLOR_GREEN   "\x1b[32m"
#define ANSI_COLOR_YELLOW  "\x1b[33m"
#define ANSI_COLOR_BLUE    "\x1b[34m"
#define ANSI_COLOR_MAGENTA "\x1b[35m"
#define ANSI_COLOR_CYAN    "\x1b[36m"
#define ANSI_COLOR_RESET   "\x1b[0m"

void app_error(char *msg) /* Application error */
{
  fprintf(stderr, "%s\n", msg);
  exit(0);
}

char *Fgets(char *ptr, int n, FILE *stream)
{
  char *rptr;

  if(((rptr = fgets(ptr, n, stream)) == NULL) && ferror(stream))
    app_error("Fgets error");

  return rptr;
}

int buildin_command(char **argv) {
  if(!strcmp(argv[0], "exit")) {
    printf(ANSI_COLOR_YELLOW "Bye =) Come again!\n" ANSI_COLOR_YELLOW);
    exit(0);
  }

  return 0;
}

int f(char *cmdline) {
  char *argv[MAXARGS];
  char buf[MAXLINE];
  char *bufptr = buf;
  char *delim;
  int argc;

  strcpy(buf, cmdline);

  buf[strlen(bufptr)-1] = ' ';  /* Replace trailing '\n' with space */
  while (*bufptr && (*bufptr == ' ')) /* Ignore leading spaces */
    bufptr++;

  argc = 0;
  while ((delim = strchr(bufptr, ' '))) {
      argv[argc++] = buf;
      *delim = '\0';
      bufptr = delim + 1;
      while (*buf && (*buf == ' ')) /* Ignore spaces */
          bufptr++;
  }
  argv[argc] = NULL;

  printf(ANSI_COLOR_BLUE "argc: %d\n" ANSI_COLOR_BLUE, argc);

  buildin_command(argv);
}

int main()
{
  char cmdline[MAXLINE];

  while(1) {
    printf(ANSI_COLOR_RESET "dsh$: " ANSI_COLOR_RESET);
    Fgets(cmdline, MAXLINE, stdin);

    f(cmdline);
  }
}
