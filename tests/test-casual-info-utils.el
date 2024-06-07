;;; test-casual-info-utils.el --- Casual Info Utils Tests  -*- lexical-binding: t; -*-

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
(require 'casual-info-utils)

(ert-deftest test-casual-info-unicode-db-get ()
  (let ((casual-info-use-unicode-symbols nil))
    (should (string-equal (casual-info-unicode-db-get :fast-forward) "Next"))
    (should (string-equal (casual-info-unicode-db-get :rewind) "Prev"))
    (should (string-equal (casual-info-unicode-db-get :fast-forward-or-down) "Next/Down"))
    (should (string-equal (casual-info-unicode-db-get :rewind-or-up) "Prev/Up"))
    (should (string-equal (casual-info-unicode-db-get :up) "Up"))
    (should (string-equal (casual-info-unicode-db-get :first) "First"))
    (should (string-equal (casual-info-unicode-db-get :last) "Last"))
    (should (string-equal (casual-info-unicode-db-get :up-arrow) "Prev"))
    (should (string-equal (casual-info-unicode-db-get :down-arrow) "Next"))
    (should (string-equal (casual-info-unicode-db-get :scroll-up) "Up"))
    (should (string-equal (casual-info-unicode-db-get :scroll-down) "Down"))
    (should (string-equal (casual-info-unicode-db-get :paragraph) "Paragraph"))
    (should (string-equal (casual-info-unicode-db-get :link) "Link")))


  (let ((casual-info-use-unicode-symbols t))
    (should (string-equal (casual-info-unicode-db-get :fast-forward) "⏩️"))
    (should (string-equal (casual-info-unicode-db-get :rewind) "⏪️"))
    (should (string-equal (casual-info-unicode-db-get :fast-forward-or-down) "⏩️⤵️"))
    (should (string-equal (casual-info-unicode-db-get :rewind-or-up) "⏪️⤴️"))
    (should (string-equal (casual-info-unicode-db-get :up) "⏫️"))
    (should (string-equal (casual-info-unicode-db-get :first) "⏮️"))
    (should (string-equal (casual-info-unicode-db-get :last) "⏭️"))
    (should (string-equal (casual-info-unicode-db-get :up-arrow) "↑"))
    (should (string-equal (casual-info-unicode-db-get :down-arrow) "↓"))
    (should (string-equal (casual-info-unicode-db-get :scroll-up) "📄↓"))
    (should (string-equal (casual-info-unicode-db-get :scroll-down) "📄↑"))
    (should (string-equal (casual-info-unicode-db-get :paragraph) " ¶"))
    (should (string-equal (casual-info-unicode-db-get :link) " 🔗"))))


(provide 'test-casual-info-utils)
;;; test-casual-info-utils.el ends here
