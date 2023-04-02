;;; elixir-ts-mode-tests.el --- Tests for elixir-ts-mode         -*- lexical-binding: t; -*-

;; Copyright (C) 2022, 2023 Wilhelm H Kirschbaum

;;  This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.

;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU General Public License for more details.

;;  You should have received a copy of the GNU General Public License
;;  along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Code:

(require 'ert)
(require 'ert-x)
(require 'treesit)

(ert-deftest elixir-ts-mode-test-indentation ()
  (skip-unless (and (treesit-ready-p 'elixir) (treesit-ready-p 'heex)))
  (ert-test-erts-file (ert-resource-file "indent.erts")))

(ert-deftest elixir-ts-mode-test-editing ()
  (skip-unless (and (treesit-ready-p 'elixir) (treesit-ready-p 'heex)))
  (ert-test-erts-file (ert-resource-file "editing.erts")))

(provide 'elixir-ts-mode-tests)
;;; elixir-ts-mode-tests.el ends here
