; http://sourceware.org/ml/guile/2000-06/msg00069.html
;; (define (grep rx strings)
;;   (let ((r (make-regexp rx)))
;;     (filter (lambda (x) (regexp-exec r x)) strings)))
;;
;; (define (directory->list dir)
;;   (let ((dport (opendir dir)))
;;     (let loop ((entry (readdir dport))
;;          (files '()))
;;       (if (not (eof-object? entry))
;;     (loop (readdir dport) (cons entry files))
;;     (begin
;;       (closedir dport)
;;       (reverse! files))))))
;;
;; ;(display (sort (directory->list "lib")) string<?)