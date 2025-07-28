{
  pkgs,
  palette,
  ...
}:
pkgs.writeTextFile {
  name = "telegram.userstyle.css";
  text = ''
    @-moz-document domain("web.telegram.org") {
      .page-chats {
        max-width: none;
      }
      .chat-background canvas {
        display: none;
      }

      :root {
        --surface-color: #${palette.base00};
        --primary-color: #${palette.base02};
        --secondary-color: #${palette.base05};
        --primary-text-color: #${palette.base05};
        --badge-text-color: #${palette.base00};
        --secondary-text-color: #${palette.base04};
        --link-color: #${palette.base07};
      }

      .row:hover {
        --light-filled-secondary-text-color: #${palette.base04};
        --secondary-text-color: #${palette.base02};
      }

      .new-message-wrapper {
        --surface-color: #${palette.base00};
      }

      .bubble {
        --message-background-color: #${palette.base00};
      }

      .chat-input .btn-send {
        --primary-color: #${palette.base07};
        color: #${palette.base02};
      }

      .chat-background .is-pattern {
        background-color: #${palette.base01};
      }

      #column-left {
        background-color: #${palette.base00};
      }

      .topbar {
        background-color: #${palette.base00};
      }
    }
  '';
}
