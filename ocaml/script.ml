#!/bin/sh
#(* -*- ocaml -*-
    [ -n "$OCAML_TOPLEVEL_PATH" ] || eval `opam config env`
    exec ocaml -I "$OCAML_TOPLEVEL_PATH" "$0" "$@"
#*) use "topfind"

#require "unix"

open Printf
open Unix

let () =
  printf "Hello from %d to %d.\n" (getpid ()) (getppid ())
;;
