{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    fortune
    brave
    dmenu
    wget
  ];

  {  programs.emacs = {
      enable = true;
      #package = pkgs.emacsGit;
      extraPackages = (epkgs:
        (with epkgs.melpaPackages; [
  	aggressive-indent
  	avy
  	bash-completion
  	beacon
  	blacken
  	cider
  	clojure-mode
  	cmake-mode
  	color-identifiers-mode
  	company
  	company-box
  	company-lsp
  	company-org-roam
  	counsel
  	counsel-projectile
  	darkroom
  	diff-hl
  	diminish
  	direnv
  	dockerfile-mode
  	doom-modeline
  	dtrt-indent
  	edit-indirect
  	eglot
  	el-patch
  	elpy
  	epresent
  	evil
  	evil-collection
  	evil-magit
  	evil-numbers
  	evil-org
  	evil-surround
  	evil-swap-keys
  	fish-completion
  	fish-mode
  	flycheck
  	flycheck-inline
  	flycheck-jest
  	flycheck-rust
  	forth-mode
  	general
  	gitconfig-mode
  	go-mode
  	google-translate
  	graphviz-dot-mode
  	groovy-mode
  	haskell-mode
  	imenu-list
  	ivy
  	ivy-bibtex
  	ivy-pass
  	ivy-xref
  	jinja2-mode
  	js2-mode
  	json-mode
  	ledger-mode
  	lispyville
  	lsp-haskell
  	lsp-mode
  	lsp-ui
  	lua-mode
  	magit
  	markdown-mode
  	modus-themes
  	nix-mode
  	nix-sandbox
  	notmuch
  	org-cliplink
  	org-download
  	org-drill
  	org-ref
  	org-roam
  	org-roam-bibtex
  	org-super-agenda
  	paren-face
  	pass
  	php-mode
  	pip-requirements
  	plantuml-mode
  	prettier-js
  	projectile
  	protobuf-mode
  	psc-ide
  	purescript-mode
  	py-autopep8
  	racer
  	racket-mode
  	restclient
  	rjsx-mode
  	rust-mode
  	smex
  	spaceline
          super-save
  	terraform-mode
  	tide
  	toc-org
  	typescript-mode
  	use-package
  	visual-fill-column
  	vterm
  	vue-mode
  	w3m
  	web-mode
  	wgrep
  	which-key
  	whitespace-cleanup-mode
  	writegood-mode
  	yaml-mode
  	yasnippet
        ]) ++
        [
  	epkgs.orgPackages.org-plus-contrib
  	epkgs.elpaPackages.adaptive-wrap
  	epkgs.exwm
        ]
        );
    };
    services.emacs.enable = true;
    }


  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };

  programs.home-manager = {
    enable = true;
    path = "…";
  };
}
