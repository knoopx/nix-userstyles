{
  pkgs,
  lib,
  discord-userstyle,
  ...
}:
pkgs.writeTextFile {
  name = "discord.userstyle.css";
  text = ''
    @-moz-document domain("discord.com") {
      ${lib.readFile discord-userstyle}
    };
  '';
}
