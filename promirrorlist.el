#!/usr/bin/emacs --script
;;; this script is do the sys mantain with arch pacman mirrorlist

(let (posx posy buf
           (pacnew "/etc/pacman.d/mirrorlist.pacnew")
           (mirror "/etc/pacman.d/mirrorlist"))
     (with-temp-buffer
      (insert-file-contents pacnew)
      (goto-char (point-min))
      (search-forward "## China")
      (forward-line)
      (letrec ((use-china
                (lambda ()
                   (beginning-of-line)
                   (when (and (equal "#" (string (char-after (point))))
                              (equal "S" (string (char-after (+ (point) 1)))))
                         (delete-char 1)
                         (forward-line)
                         (funcall use-china)))))
              (funcall use-china))
      (write-file mirror)
      ))

;;; promirrorlist.el ends here
