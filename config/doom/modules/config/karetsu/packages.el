;; -*- no-byte-compile: t; -*-
;;; private/karetsu/packages.el

(package! emacs-snippets
  :recipe (:fetcher github
           :repo "hlissner/emacs-snippets"
           :files ("*")))
