/*-
 * Copyright (c) 2003-2007 Tim Kientzle
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR(S) ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR(S) BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "archive_platform.h"
__FBSDID("$FreeBSD: head/lib/libarchive/archive_virtual.c 201098 2009-12-28 02:58:14Z kientzle $");

#include "archive.h"
#include "archive_entry.h"
#include "archive_private.h"

int
tk_archive_write_close(struct archive *a)
{
	return ((a->vtable->tk_archive_close)(a));
}

int
tk_archive_read_close(struct archive *a)
{
	return ((a->vtable->tk_archive_close)(a));
}

#if ARCHIVE_API_VERSION > 1
int
tk_archive_write_finish(struct archive *a)
{
	return ((a->vtable->tk_archive_finish)(a));
}
#else
/* Temporarily allow library to compile with either 1.x or 2.0 API. */
void
tk_archive_write_finish(struct archive *a)
{
	(void)(a->vtable->tk_archive_finish)(a);
}
#endif

int
tk_archive_read_finish(struct archive *a)
{
	return ((a->vtable->tk_archive_finish)(a));
}

int
tk_archive_write_header(struct archive *a, struct archive_entry *entry)
{
	++a->file_count;
	return ((a->vtable->tk_archive_write_header)(a, entry));
}

int
tk_archive_write_finish_entry(struct archive *a)
{
	return ((a->vtable->tk_archive_write_finish_entry)(a));
}

#if ARCHIVE_API_VERSION > 1
ssize_t
#else
/* Temporarily allow library to compile with either 1.x or 2.0 API. */
int
#endif
tk_archive_write_data(struct archive *a, const void *buff, size_t s)
{
	return ((a->vtable->tk_archive_write_data)(a, buff, s));
}

ssize_t
tk_archive_write_data_block(struct archive *a, const void *buff, size_t s, off_t o)
{
	return ((a->vtable->tk_archive_write_data_block)(a, buff, s, o));
}
