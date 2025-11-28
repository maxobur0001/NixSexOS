{ config, pkgs, lib, ...}: {
  programs.qutebrowser.enable = true;
  programs.qutebrowser.extraConfig = ''
c.auto_save.session = True
c.tabs.position = "top"


###### Completion colors ######

COLORS = {
    "purple": "#9564FD",
    "black": "#000000",
    "white": "#FEFEFE",
    "darkpurple": "#6442A5",
    "red": "#D5206A"
}

# Category
c.colors.completion.category.bg = COLORS["purple"]
c.colors.completion.category.fg = COLORS["black"]
c.colors.completion.category.border.bottom = COLORS["purple"]
c.colors.completion.category.border.top = COLORS["purple"]

# Rows
c.colors.completion.even.bg = COLORS["black"]
c.colors.completion.odd.bg = COLORS["black"]
c.colors.completion.fg = COLORS["purple"]

# Selected
c.colors.completion.item.selected.bg = COLORS["purple"]
c.colors.completion.item.selected.fg = COLORS["black"]
c.colors.completion.item.selected.border.bottom = COLORS["purple"]
c.colors.completion.item.selected.border.top = COLORS["purple"]

# Matched
c.colors.completion.item.selected.match.fg = COLORS["white"]
c.colors.completion.match.fg = COLORS["white"]

# Scrollbar
c.colors.completion.scrollbar.bg = COLORS["black"]
c.colors.completion.scrollbar.fg = COLORS["purple"]


####### Context menu #######
c.colors.contextmenu.disabled.bg = COLORS["black"]
c.colors.contextmenu.disabled.fg = COLORS["darkpurple"]
c.colors.contextmenu.menu.bg = COLORS["black"]
c.colors.contextmenu.menu.fg = COLORS["purple"]
c.colors.contextmenu.selected.bg = COLORS["purple"]
c.colors.contextmenu.selected.fg = COLORS["black"]


####### Downloads #######
c.colors.downloads.bar.bg = COLORS["black"]

c.colors.downloads.error.bg = COLORS["darkpurple"]
c.colors.downloads.error.fg = COLORS["black"]

c.colors.downloads.start.bg = COLORS["purple"]
c.colors.downloads.start.fg = COLORS["black"]

c.colors.downloads.stop.bg = COLORS["purple"]
c.colors.downloads.stop.fg = COLORS["black"]

c.colors.downloads.system.bg = "none"
c.colors.downloads.system.fg = "none"


###### Hints ######
c.colors.hints.bg = COLORS["black"]
c.colors.hints.fg = COLORS["purple"]
c.colors.hints.match.fg = COLORS["white"]

c.colors.keyhint.bg = COLORS["black"]
c.colors.keyhint.fg = COLORS["purple"]
c.colors.keyhint.suffix.fg = COLORS["white"]


###### Messages ######
c.colors.messages.error.bg = COLORS["red"]
c.colors.messages.error.fg = COLORS["black"]
c.colors.messages.error.border = COLORS["red"]

c.colors.messages.warning.bg = "#FFDE81"
c.colors.messages.warning.fg = COLORS["black"]
c.colors.messages.warning.border = "#FFDE81"

c.colors.messages.info.bg = COLORS["black"]
c.colors.messages.info.fg = COLORS["purple"]
c.colors.messages.info.border = COLORS["black"]



###### Prompts ######
c.colors.prompts.bg = COLORS["black"]
c.colors.prompts.fg = COLORS["purple"]
c.colors.prompts.border = COLORS["purple"]
c.colors.prompts.selected.bg = COLORS["purple"]
c.colors.prompts.selected.fg = COLORS["black"]
c.prompt.radius = 0


###### Caret ######
c.colors.statusbar.caret.bg = COLORS["black"]
c.colors.statusbar.caret.fg = COLORS["purple"]
c.colors.statusbar.caret.selection.bg = COLORS["purple"]
c.colors.statusbar.caret.selection.fg = COLORS["black"]


###### Command ######
c.colors.statusbar.command.bg = COLORS["black"]
c.colors.statusbar.command.fg = COLORS["purple"]
c.colors.statusbar.command.private.bg = COLORS["purple"]
c.colors.statusbar.command.private.fg = COLORS["black"]


###### Insert ######
c.colors.statusbar.insert.bg = COLORS["black"]
c.colors.statusbar.insert.fg = COLORS["purple"]


###### Command ######
c.colors.statusbar.normal.bg = COLORS["black"]
c.colors.statusbar.normal.fg = COLORS["purple"]
c.statusbar.show = "in-mode"


###### Passthrough ######
c.colors.statusbar.passthrough.bg = COLORS["black"]
c.colors.statusbar.passthrough.fg = COLORS["purple"]


###### Private ######
c.colors.statusbar.private.bg = COLORS["purple"]
c.colors.statusbar.private.fg = COLORS["black"]


###### URL ######
c.colors.statusbar.progress.bg = COLORS["purple"]
c.colors.statusbar.url.error.fg = COLORS["red"]
c.colors.statusbar.url.fg = COLORS["purple"]
c.colors.statusbar.url.success.http.fg = "#63ED5E"
c.colors.statusbar.url.success.https.fg = "#63ED5E"
c.colors.statusbar.url.hover.fg = "#7A71EB"
c.colors.statusbar.url.warn.fg = "#FFDE81"


###### Tabs ######

# Tabs
c.colors.tabs.bar.bg = COLORS["black"]
c.colors.tabs.even.bg = COLORS["black"]
c.colors.tabs.even.fg = COLORS["purple"]
c.colors.tabs.odd.bg = COLORS["black"]
c.colors.tabs.odd.fg = COLORS["purple"]
c.colors.tabs.selected.even.bg = COLORS["purple"]
c.colors.tabs.selected.even.fg = COLORS["black"]
c.colors.tabs.selected.odd.bg = COLORS["purple"]
c.colors.tabs.selected.odd.fg = COLORS["black"]
c.tabs.title.format = "{current_title}" 
c.tabs.show = "multiple"

# Indicator
c.colors.tabs.indicator.error = COLORS["red"]
c.colors.tabs.indicator.start = "#63ED5E"
c.colors.tabs.indicator.stop = "#63ED5E"
c.colors.tabs.indicator.system = "none"
c.tabs.indicator.width = 0

# Pinned
c.colors.tabs.pinned.even.bg = COLORS["darkpurple"]
c.colors.tabs.pinned.even.fg = COLORS["black"]
c.colors.tabs.pinned.odd.bg = COLORS["darkpurple"]
c.colors.tabs.pinned.odd.fg = COLORS["black"]
c.colors.tabs.pinned.selected.even.bg = COLORS["purple"]
c.colors.tabs.pinned.selected.even.fg = COLORS["black"]
c.colors.tabs.pinned.selected.odd.bg = COLORS["purple"]
c.colors.tabs.pinned.selected.odd.fg = COLORS["black"]


###### Tooltip ######
c.colors.tooltip.bg = COLORS["black"]
c.colors.tooltip.fg = COLORS["purple"]

###### Webpage ######
c.colors.webpage.bg = COLORS["black"]
c.colors.webpage.preferred_color_scheme = "dark"


###### Fonts ######
c.fonts.prompts = "20px Terminess Nerd Font Mono"
c.fonts.default_family = "Terminess Nerd Font Mono"
c.fonts.default_size = "20px"
  '';
}
