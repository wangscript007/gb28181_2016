/*
 * mysqlStubInit.c --
 *
 *	Stubs tables for the foreign MySQL libraries so that
 *	Tcl extensions can use them without the linker's knowing about them.
 *
 * @CREATED@ 2010-12-27 19:26:47Z by genExtStubs.tcl from ../generic/mysqlStubDefs.txt
 *
 * Copyright (c) 2010 by Kevin B. Kenny.
 *
 * Please refer to the file, 'license.terms' for the conditions on
 * redistribution of this file and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *-----------------------------------------------------------------------------
 */

#include <tcl.h>
#ifdef _WIN32
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#endif
#include "fakemysql.h"

/*
 * Static data used in this file
 */

/*
 * Names of the libraries that might contain the MySQL API
 */

static const char *const mysqlStubLibNames[] = {
    /* @LIBNAMES@: DO NOT EDIT THESE NAMES */
    "libmysqlclient_r", "libmysqlclient", "libmysql", NULL
    /* @END@ */
};

/* ABI Version numbers of the MySQL API that we can cope with */

static const char *const mysqlSuffixes[] = {
    "", ".18", ".17", ".16", ".15", NULL
};

/* Names of the functions that we need from MySQL */

static const char *const mysqlSymbolNames[] = {
    /* @SYMNAMES@: DO NOT EDIT THESE NAMES */
    "mysql_server_init",
    "mysql_server_end",
    "mysql_affected_rows",
    "mysql_autocommit",
    "mysql_change_user",
    "mysql_close",
    "mysql_commit",
    "mysql_errno",
    "mysql_error",
    "mysql_fetch_fields",
    "mysql_fetch_lengths",
    "mysql_fetch_row",
    "mysql_field_count",
    "mysql_free_result",
    "mysql_get_client_version",
    "mysql_init",
    "mysql_list_fields",
    "mysql_list_tables",
    "mysql_num_fields",
    "mysql_options",
    "mysql_query",
    "mysql_real_connect",
    "mysql_rollback",
    "mysql_select_db",
    "mysql_sqlstate",
    "mysql_ssl_set",
    "mysql_stmt_affected_rows",
    "mysql_stmt_bind_param",
    "mysql_stmt_bind_result",
    "mysql_stmt_close",
    "mysql_stmt_errno",
    "mysql_stmt_error",
    "mysql_stmt_execute",
    "mysql_stmt_fetch",
    "mysql_stmt_fetch_column",
    "mysql_stmt_init",
    "mysql_stmt_prepare",
    "mysql_stmt_result_metadata",
    "mysql_stmt_sqlstate",
    "mysql_stmt_store_result",
    "mysql_store_result",
    NULL
    /* @END@ */
};

/*
 * Table containing pointers to the functions named above.
 */

static mysqlStubDefs mysqlStubsTable;
mysqlStubDefs* mysqlStubs = &mysqlStubsTable;

/*
 *-----------------------------------------------------------------------------
 *
 * MysqlInitStubs --
 *
 *	Initialize the Stubs table for the MySQL API
 *
 * Results:
 *	Returns the handle to the loaded MySQL client library, or NULL
 *	if the load is unsuccessful. Leaves an error message in the
 *	interpreter.
 *
 *-----------------------------------------------------------------------------
 */

MODULE_SCOPE Tcl_LoadHandle
MysqlInitStubs(Tcl_Interp* interp)
{
    int status;			/* Status of Tcl library calls */
    Tcl_Obj* path;		/* Path name of a module to be loaded */
    Tcl_Obj* shlibext;		/* Extension to use for load modules */
    Tcl_LoadHandle handle = NULL;
				/* Handle to a load module */
    int i, j;

    /* Determine the shared library extension */

    status = Tcl_EvalEx(interp, "::info sharedlibextension", -1,
			TCL_EVAL_GLOBAL);
    if (status != TCL_OK) return NULL;
    shlibext = Tcl_GetObjResult(interp);
    Tcl_IncrRefCount(shlibext);

    /* Walk the list of possible library names to find an MySQL client */

    status = TCL_ERROR;
    for (i = 0; status == TCL_ERROR && mysqlStubLibNames[i] != NULL; ++i) {
	for (j = 0; status == TCL_ERROR && mysqlSuffixes[j] != NULL; ++j) {
	    path = Tcl_NewStringObj(mysqlStubLibNames[i], -1);
	    Tcl_AppendObjToObj(path, shlibext);
	    Tcl_AppendToObj(path, mysqlSuffixes[j], -1);
	    Tcl_IncrRefCount(path);
	
	    /* Try to load a client library and resolve symbols within it. */

	    Tcl_ResetResult(interp);
	    status = Tcl_LoadFile(interp, path, mysqlSymbolNames, 0,
				  (void*)mysqlStubs, &handle);
	    Tcl_DecrRefCount(path);
	}
    }

    /* 
     * Either we've successfully loaded a library (status == TCL_OK), 
     * or we've run out of library names (in which case status==TCL_ERROR
     * and the error message reflects the last unsuccessful load attempt).
     */
    Tcl_DecrRefCount(shlibext);
    if (status != TCL_OK) {
	return NULL;
    }
    return handle;
}
