(require 'org-publish)

;; Requires Org-mode 8.0 or later
;; You may want add-to-list instead if you have existing projects...
(setq org-publish-project-alist
      '(
	("hidekisaito-emacs-base"
	 :base-directory "/path/to/files/src" ;; point this to this your directory
	 :base-extension "org"
	 :publishing-directory "/path/to/files/pub" ;; point this to your directory
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :headline-levels 4             ; Just the default for this project.
	 :auto-preamble t
	 )
	
	("hidekisaito-emacs-static"
	 :base-directory "/path/to/files/src" ;; point this to your directory
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "/path/to/files/pub" ;; point this to your directory
	 :recursive t
	 :publishing-function org-publish-attachment
	 )
	
	("hidekisaito-emacs-page" :components ("hidekisaito-emacs-base" "hidekisaito-emacs-static"))
	
	))

