;; Time-stamp: <2016-05-17 13:22:07 kmodi>

;; Font Check

(defvar font-symbola-p nil
  "If non-nil, Symbola font is available on the system. This font is required
for emoji and other Unicode 6+ display.")

(defvar font-dejavu-sans-mono-p nil
  "If non-nil, Dejavu Sans Mono font is available on the system.")

(when (find-font (font-spec :name "Symbola"))
  ;; Manually choose a fallback font for Unicode
  ;; http://endlessparentheses.com/manually-choose-a-fallback-font-for-unicode.html
  (set-fontset-font "fontset-default" nil (font-spec :size 20 :name "Symbola"))
  (setq font-symbola-p t))

(when (find-font (font-spec :name "DejaVu Sans Mono"))
  (setq font-dejavu-sans-mono-p t))


(provide 'setup-font-check)
