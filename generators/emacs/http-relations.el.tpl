;;; http-relations.el --- Look up the meaning of HTTP relations
;;
;; This file was automatically generated by
;; https://github.com/for-GET/know-your-http-well
;;
;;; Commentary:
;;; Code goes here:

(defconst http-relations
  '({{ HTTP_RELATIONS }}))

;;;###autoload
(defun http-relation (relation)
  "Display the meaning of an HTTP relation"
  (interactive
   (list (completing-read "Enter HTTP relation: " http-relations)))
  (let* ((lowercased-relation (downcase relation))
        (found (assoc lowercased-relation http-relations)))
    (if found
        (let ((description (car (cdr found))))
          (message
           "%s - HTTP relation\n%s"
           lowercased-relation (car description) ))
      (message "%s - HTTP relation\nUNKNOWN" lowercased-relation))
    ))

(provide 'http-relations)

;;; http-relation.el ends here