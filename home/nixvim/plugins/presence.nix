{...}: {
  plugins.cord.enable = true;
  plugins.cord.settings = {
    display.theme = "catppuccin";
    editor.tooltip = "запуталась культя";

    text = {
        workspace = "работаю над \${workspace}";
        viewing = "просматриваю \${filename}";
        editing = "редачу \${filename}";
        docs = "читаю \${name}";
        file_browser = "смотрю файлы в \${name}";
        terminal = "терминалю в \${name}";
    };
    variables = true;
  };
}
