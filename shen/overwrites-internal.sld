;; Copyright (c) 2012-2015 Bruno Deferrari.  All rights reserved.
;; BSD 3-Clause License: http://opensource.org/licenses/BSD-3-Clause

(define-library (shen overwrites-internal)
  (import (scheme base) (scheme file)
          (only (shen primitives) kl:value full-path-for-file kl:eval-kl))

  (cond-expand
   (chibi
    (import (only (chibi io) port->string)
            (only (chibi pathname) make-path)
            (srfi 69)))
   (gauche
    (import (rename (only (file util) build-path)
              (build-path make-path))
            (only (gauche portutil) port->string)
            (shen support gauche srfi-69))))

  (export
   read-file-as-bytelist
   read-file-as-string
   shen-sysfunc?)

  (include "impl/overwrites-internal.scm"))
