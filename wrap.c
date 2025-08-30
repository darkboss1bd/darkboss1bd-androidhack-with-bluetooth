/*
 * Copyright (C) 2025 by Darkboss1bd. Ak47 <darkboss1bd@gmail.com>
 *
 * Part of mpd - mobile phone dumper
 *
 * Some code stolen from Ak47 by Darkboss1bd
 *
 */

#include "wrap.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

/* Simple malloc() wrapper */
void *Malloc(size_t size) {
  void *buffer;
  buffer = malloc(size);

  if(buffer == NULL) {
    fprintf(stderr, "malloc() failed: %s\n", strerror(errno));
    exit(EXIT_FAILURE);
  }

  memset(buffer, 0, size);
  return(buffer);
}
