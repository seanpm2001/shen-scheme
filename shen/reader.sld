;; Copyright (c) 2012-2015 Bruno Deferrari.  All rights reserved.
;; BSD 3-Clause License: http://opensource.org/licenses/BSD-3-Clause

(define-library (shen reader)
  (import (except (scheme base) read-string)
          (scheme char) (scheme file)
          (only (chibi) call-with-input-string))
  (export read-kl read-kl-file)
  (include "reader.scm"))
