;;; test-casual-info-settings.el --- Casual Info Settings Tests  -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Charles Choi

;; Author: Charles Choi <kickingvegas@gmail.com>
;; Keywords: tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'ert)
(require 'casual-info-test-utils)
(require 'casual-info-settings)

(ert-deftest test-casual-info-settings-tmenu-bindings ()
  (casualt-setup)
  (let ((test-vectors (list)))
    (push (casualt-suffix-test-vector "u" #'casual-lib-customize-casual-lib-use-unicode) test-vectors)
    (push (casualt-suffix-test-vector "a" #'casual-info-about) test-vectors)
    (push (casualt-suffix-test-vector "v" #'casual-info-version) test-vectors)
    (casualt-suffix-testbench-runner test-vectors
                                     #'casual-info-settings-tmenu
                                     '(lambda () (random 5000))))
  (casualt-breakdown t))

(provide 'test-casual-info-settings)
;;; test-casual-info-setttings.el ends here
