; (require "scooter/scooter.scm")
; (require "smooth-scroll/smooth-scroll.scm")
; (require "showkeys/showkeys.scm")
;
; (require "modeline/modeline.scm")
; ;; Make sure to put these AFTER your lsp configs in steel so that the document is reloaded with the LSP
; ;; register the modeline to automatically run on save/open
; (modeline-enable)
;
; ;; this steel function refreshes the modeline, you can bind a key to call it manually in your helix/init.scm or config.toml
; (provide refresh-modeline)
; ;; init.scm
; (require "notify/notify.scm")
;
; (notify-config 'render 'minimal) ;; Default is 'default
; (require "wakatime/wakatime.scm")
