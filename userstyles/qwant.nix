{
  pkgs,
  palette ? null,
  nix-colors ? null,
  discord-userstyle ? null,
}:
pkgs.writeTextFile {
  name = "qwant.userstyle.css";
  text = ''
    @-moz-document domain("qwant.com") {
      body {
        background-color: var(--base00) !important;
        color: var(--base05) !important;
      }

      *:focus {
        outline: 2px solid var(--base0D) !important;
        outline-offset: 2px !important;
      }

      button:focus,
      input:focus,
      select:focus,
      textarea:focus {
        outline: 2px solid var(--base0C) !important;
        outline-offset: 1px !important;
      }

      button {
        color: var(--base05) !important;
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      button:hover {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      button:active {
        background-color: var(--base03) !important;
      }

      fieldset {
        border-color: var(--base03) !important;
      }

      a {
        color: var(--base0D) !important;
        text-decoration-color: var(--base0D);
      }

      a:hover {
        color: var(--base0C) !important;
        text-decoration-color: var(--base0C) !important;
      }

      input {
        border-color: var(--base03) !important;
        background-color: var(--base00) !important;
        color: var(--base05) !important;
      }

      input::placeholder,
      textarea::placeholder {
        color: var(--base03) !important;
        opacity: 0.8 !important;
      }

      button:disabled,
      input:disabled,
      select:disabled,
      textarea:disabled {
        opacity: 0.5 !important;
        cursor: not-allowed !important;
        background-color: var(--base03) !important;
        color: var(--base03) !important;
      }

      ::selection {
        background-color: var(--base0D) !important;
        color: var(--base00) !important;
      }

      ::-moz-selection {
        background-color: var(--base0D) !important;
        color: var(--base00) !important;
      }

      [data-theme="dark"] {
        background-color: var(--base02) !important;
      }

      #didomi-host .didomi-exterior-border {
        border-color: var(--base03) !important;
      }

      #didomi-host .didomi-popup-backdrop {
        background-color: var(--base00) !important;
      }

      .hide-focus :focus {
        outline-color: var(--base0D) !important;
      }

      .hide-focus ::-moz-focus-inner {
        border-color: var(--base0D) !important;
      }

      body[data-product="alpha"] #root {
        background-color: var(--base00) !important;
      }

      .fSA7r {
        border-color: var(--base03) !important;
      }

      .fSA7r ._3UfJU {
        border-color: var(--base03) !important;
      }

      .k\+GYC {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .k\+GYC::after {
        background-color: var(--base02) !important;
      }

      .k\+GYC .geIQp {
        color: var(--base05) !important;
      }

      .mQ1pp {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .mQ1pp::after {
        background-color: var(--base0D) !important;
      }

      .mQ1pp .geIQp {
        color: var(--base0D) !important;
      }

      .UjMLo {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .UjMLo::after {
        background-color: var(--base0B) !important;
      }

      .UjMLo .geIQp {
        color: var(--base05) !important;
      }

      .IEOrf {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .IEOrf::after {
        background-color: var(--base09) !important;
      }

      .IEOrf .geIQp {
        color: var(--base09) !important;
      }

      .eG9EN {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .eG9EN::after {
        background-color: var(--base09) !important;
      }

      .eG9EN .geIQp {
        color: var(--base0F) !important;
      }

      .Cm1bH {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .Cm1bH::after {
        background-color: var(--base07) !important;
      }

      .Cm1bH .geIQp {
        color: var(--base0E) !important;
      }

      .axYCH span {
        text-decoration-color: var(--base03);
      }

      .gW4ak:hover,
      a:hover .gW4ak,
      ._4OTuF {
        text-decoration-color: var(--base03);
      }

      ._77MAf {
        color: var(--base07) !important;
      }

      .QjlVO {
        color: var(--base07) !important;
      }

      .yrqb8 {
        color: var(--base06) !important;
      }

      .CFifI {
        color: var(--base09) !important;
      }

      .sV41D {
        color: var(--base05) !important;
      }

      .LNTPh {
        color: var(--base06) !important;
      }

      .hbIfP {
        color: var(--base03) !important;
      }

      .IXeY3 {
        color: var(--base05) !important;
      }

      .q0UG9 {
        color: var(--base03) !important;
      }

      .XprVI {
        color: var(--base0D) !important;
      }

      .lEL4P {
        color: var(--base03) !important;
      }

      .O36-I {
        color: var(--base03) !important;
      }

      .t3Nfi {
        color: var(--base03) !important;
      }

      .lYSi7 {
        color: var(--base03) !important;
      }

      ._9vFwU {
        color: var(--base0B) !important;
      }

      .gxOsn {
        color: var(--base05) !important;
      }

      .lR9cD {
        color: var(--base09) !important;
      }

      .MWoQK {
        color: var(--base0D) !important;
      }

      .HhS7p {
        color: var(--base0D) !important;
      }

      .HhS7p:hover {
        text-decoration-color: var(--base03);
      }

      a:has(.HhS7p):focus-visible {
        outline-color: var(--base03) !important;
      }

      .HhS7p:visited,
      a.external .HhS7p:visited,
      a.external:visited .HhS7p {
        color: var(--base05) !important;
      }

      ._6huDB {
        color: var(--base06) !important;
      }

      ._6huDB:hover {
        text-decoration-color: var(--base03);
      }

      a:has(._6huDB):focus-visible {
        outline-color: var(--base03) !important;
      }

      ._6huDB:visited,
      a.external ._6huDB:visited,
      a.external:visited ._6huDB {
        color: var(--base03) !important;
      }

      .MKLJT {
        color: var(--base04) !important;
      }

      .MKLJT:hover {
        text-decoration-color: var(--base03);
      }

      a:has(.MKLJT):focus-visible {
        outline-color: var(--base03) !important;
      }

      .MKLJT:visited,
      a.external .MKLJT:visited,
      a.external:visited .MKLJT {
        color: var(--base03) !important;
      }

      .r0dUS {
        color: var(--base03) !important;
      }

      .r0dUS:hover {
        text-decoration-color: var(--base03);
      }

      a:has(.r0dUS):focus-visible {
        outline-color: var(--base03) !important;
      }

      .r0dUS:visited,
      a.external .r0dUS:visited,
      a.external:visited .r0dUS {
        color: var(--base03) !important;
      }

      ._6huDB:hover {
        color: var(--base05) !important;
      }

      .r0dUS:hover {
        color: var(--base03) !important;
      }

      .wXGHO {
        background-color: var(--base02) !important;
        border: 1px solid var(--base02) !important;
      }

      .wXGHO > svg {
        color: var(--base05) !important;
      }

      .wXGHO:hover {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .wXGHO:active {
        background-color: var(--base03) !important;
      }

      .wXGHO:focus-visible {
        outline-color: var(--base0D) !important;
        outline-width: 2px !important;
        outline-offset: 2px !important;
      }

      .wXGHO.r0XKP > svg {
        color: var(--base05) !important;
      }

      .wXGHO.r0XKP:hover,
      .wXGHO.r0XKP:active {
        background-color: var(--base02) !important;
      }

      .wXGHO.JKYqe {
        background-color: var(--base0D) !important;
      }

      .wXGHO.JKYqe > svg,
      .wXGHO.JKYqe > div {
        color: var(--base00) !important;
      }

      .wXGHO.JKYqe:hover {
        background-color: var(--base0D) !important;
      }

      .wXGHO.JKYqe:active {
        background-color: var(--base0D) !important;
      }

      .ZZ32M {
        background-color: var(--base02) !important;
      }

      .ZZ32M.xWkPO {
        background-color: var(--base02) !important;
      }

      .gPOYP rect {
        fill: var(--base06) !important;
      }

      .gPOYP path {
        fill: var(--base05) !important;
      }

      ._4EaEJ {
        background-color: var(--base02) !important;
      }

      .vE9rz:focus-visible {
        outline-color: var(--base03) !important;
      }

      .vE9rz.OJZxa {
        background-color: var(--base02) !important;
      }

      .vE9rz.OJZxa:hover {
        background-color: var(--base02) !important;
      }

      .vE9rz.OJZxa:active {
        background-color: var(--base02) !important;
      }

      .vE9rz.OJZxa > svg {
        color: var(--base03) !important;
      }

      .vE9rz.OJZxa::after {
        border-color: var(--base03) !important;
      }

      .vE9rz.OJZxa.D-zDm {
        background-color: var(--base0D) !important;
      }

      .vE9rz.OJZxa.D-zDm:hover {
        background-color: var(--base05) !important;
      }

      .vE9rz.OJZxa.D-zDm:active {
        background-color: var(--base05) !important;
      }

      .vE9rz.OJZxa.oOXTo {
        background-color: var(--base02) !important;
      }

      .vE9rz.OJZxa.oOXTo > svg {
        color: var(--base05) !important;
      }

      .vE9rz.jdx48 {
        background-color: var(--base02) !important;
      }

      .vE9rz.jdx48:hover {
        background-color: var(--base02) !important;
      }

      .vE9rz.jdx48:active {
        background-color: var(--base02) !important;
      }

      .vE9rz.jdx48 > svg {
        color: var(--base06) !important;
      }

      .vE9rz.jdx48.D-zDm {
        background-color: var(--base0D) !important;
      }

      .vE9rz.jdx48.D-zDm:hover {
        background-color: var(--base0D) !important;
      }

      .vE9rz.jdx48.D-zDm:active {
        background-color: var(--base0D) !important;
      }

      .vE9rz.jdx48.D-zDm > svg {
        color: var(--base0D) !important;
      }

      .vE9rz.jdx48.oOXTo {
        background-color: var(--base02) !important;
      }

      .vE9rz.jdx48.oOXTo > svg {
        color: var(--base05) !important;
      }

      .vE9rz.T9y\+F {
        background-color: var(--base02) !important;
      }

      .vE9rz.T9y\+F:hover {
        background-color: var(--base02) !important;
      }

      .vE9rz.T9y\+F:active {
        background-color: var(--base02) !important;
      }

      .vE9rz.T9y\+F > svg {
        color: var(--base06) !important;
      }

      .vE9rz.T9y\+F.oOXTo {
        background-color: var(--base02) !important;
      }

      .vE9rz.T9y\+F.oOXTo > svg {
        color: var(--base05) !important;
      }

      .vE9rz.AHVgh {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .vE9rz.AHVgh:hover {
        background-color: var(--base02) !important;
      }

      .vE9rz.AHVgh:active {
        background-color: var(--base02) !important;
      }

      .vE9rz.AHVgh > svg {
        color: var(--base06) !important;
      }

      .vE9rz.AHVgh.D-zDm {
        border-color: var(--base03) !important;
      }

      .vE9rz.AHVgh.D-zDm {
        background-color: var(--base0D) !important;
      }

      .vE9rz.AHVgh.D-zDm:hover {
        background-color: var(--base0D) !important;
      }

      .vE9rz.AHVgh.D-zDm:active {
        background-color: var(--base0D) !important;
      }

      .vE9rz.AHVgh.D-zDm > svg {
        color: var(--base0D) !important;
      }

      .vE9rz.AHVgh.oOXTo {
        background-color: var(--base02) !important;
      }

      .vE9rz.AHVgh.oOXTo > svg {
        color: var(--base05) !important;
      }

      .vE9rz.gwZLx {
        background-color: var(--base02) !important;
      }

      .vE9rz.gwZLx:hover {
        background-color: var(--base02) !important;
      }

      .vE9rz.gwZLx > svg {
        color: var(--base06) !important;
      }

      .vE9rz.gwZLx.oOXTo {
        background-color: var(--base02) !important;
      }

      .vE9rz.gwZLx.oOXTo > svg {
        color: var(--base05) !important;
      }

      .vE9rz._7uWLz {
        background-color: var(--base02) !important;
      }

      .vE9rz._7uWLz:hover {
        background-color: var(--base02) !important;
      }

      .vE9rz._7uWLz:active {
        background-color: var(--base02) !important;
      }

      .vE9rz._7uWLz > svg {
        color: var(--base03) !important;
      }

      .vE9rz._7uWLz.D-zDm {
        background-color: var(--base0D) !important;
      }

      .vE9rz._7uWLz.D-zDm:hover {
        background-color: var(--base05) !important;
      }

      .vE9rz._7uWLz.D-zDm:active {
        background-color: var(--base05) !important;
      }

      .vE9rz._7uWLz.oOXTo {
        background-color: var(--base02) !important;
      }

      .vE9rz.Bc0dE {
        background-color: var(--base02) !important;
      }

      .vE9rz.Bc0dE:hover {
        background-color: var(--base02) !important;
      }

      .vE9rz.Bc0dE:active {
        background-color: var(--base0A) !important;
      }

      .vE9rz.Bc0dE > svg {
        color: var(--base03) !important;
      }

      .vE9rz.Bc0dE.oOXTo {
        background-color: var(--base02) !important;
      }

      .vE9rz.Bc0dE.oOXTo > svg {
        color: var(--base05) !important;
      }

      .vE9rz.oA56J {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .vE9rz.oA56J.D-zDm {
        border-color: var(--base03) !important;
      }

      .vE9rz.oA56J.oOXTo {
        background-color: var(--base02) !important;
      }

      .vE9rz.oA56J.oOXTo > svg {
        color: var(--base05) !important;
      }

      .vE9rz .ab9St {
        background-color: var(--base02) !important;
      }

      .vE9rz .ab9St::after {
        background-color: var(--base02) !important;
      }

      .vE9rz:hover .ab9St::after {
        background-color: var(--base02) !important;
      }

      .vE9rz:active .ab9St::after {
        background-color: var(--base05) !important;
      }

      .vE9rz .CZaA2 {
        background-color: var(--base02) !important;
      }

      .vE9rz:not(.oOXTo) .IiLM7 {
        background-color: var(--base02) !important;
      }

      .vE9rz:not(.oOXTo) ._1y0sO {
        background-color: var(--base02) !important;
      }

      .vE9rz:not(.oOXTo) ._1y0sO::after {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .vE9rz:not(.oOXTo).D-zDm ._1y0sO::after {
        background-color: var(--base02) !important;
      }

      .pxKCg span {
        background-color: var(--base02) !important;
      }

      .qxXFZ {
        background-color: var(--base09) !important;
      }

      .qxXFZ::after {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .fuPyC {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] .fuPyC {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .wr59m::after {
        background-color: var(--base00) !important;
      }

      ._8Z9r4 {
        outline-color: var(--base03) !important;
        background-color: var(--base03) !important;
      }

      .MQND7::before {
        background-color: var(--base02) !important;
      }

      .Mwpn9 {
        background-color: var(--base05) !important;
        border-color: var(--base03) !important;
      }

      .Mwpn9.bsymT {
        background-color: var(--base00) !important;
      }

      .Mwpn9.mh2y3 {
        background-color: var(--base05) !important;
      }

      .Mwpn9.q6Z8K {
        border-color: var(--base03) !important;
        outline-color: var(--base03) !important;
      }

      ._7adnv {
        color: var(--base06) !important;
      }

      .xpINH {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .xpINH > a {
        color: var(--base03) !important;
        text-decoration-color: var(--base03);
      }

      .zkjlM {
        background-color: var(--base02) !important;
      }

      .zkjlM ._7adnv {
        color: var(--base03) !important;
      }

      .ZJlfy {
        background-color: var(--base05) !important;
        color: var(--base00) !important;
      }

      .ZJlfy .IXeY3 {
        color: var(--base00) !important;
      }

      .ZJlfy ._8s0O\+,
      .ZJlfy ._8s0O\+ > path {
        fill: var(--base00) !important;
        color: var(--base00) !important;
      }

      .ZJlfy:hover {
        background-color: var(--base02) !important;
        color: var(--base00) !important;
      }

      .ZJlfy:hover .IXeY3 {
        color: var(--base00) !important;
      }

      .ZJlfy:hover ._8s0O\+,
      .ZJlfy:hover ._8s0O\+ > path {
        fill: var(--base00) !important;
        color: var(--base00) !important;
      }

      .ZJlfy:active {
        background-color: var(--base02) !important;
        color: var(--base05) !important;
      }

      .ZJlfy:active .IXeY3 {
        color: var(--base05) !important;
      }

      .ZJlfy:active ._8s0O\+,
      .ZJlfy:active ._8s0O\+ > path {
        fill: var(--base05) !important;
        color: var(--base05) !important;
      }

      .ZJlfy:focus-visible {
        outline-color: var(--base03) !important;
      }

      .ZJlfy._30pva {
        background-color: var(--base0D) !important;
      }

      .ZJlfy._30pva ._8s0O\+,
      .ZJlfy._30pva ._8s0O\+ > path {
        fill: var(--base0D) !important;
      }

      .ZJlfy._30pva:hover {
        background-color: var(--base02) !important;
      }

      .ZJlfy._30pva:active {
        background-color: var(--base02) !important;
      }

      .ivyX4 {
        border-color: var(--base03) !important;
        background-color: var(--base05) !important;
      }

      .mOF7Z {
        background-color: var(--base02) !important;
      }

      .nuCXo {
        background-color: var(--base02) !important;
      }

      .mn7Ra {
        background-color: var(--base00) !important;
      }

      .mn7Ra.UGx\+B {
        background-color: var(--base02) !important;
      }

      ._9sOdz.gsaW6 {
        background-color: var(--base02) !important;
      }

      ._9sOdz.b\+3ct {
        background-color: var(--base02) !important;
      }

      ._9sOdz .uQLBv > * {
        color: var(--base06) !important;
        text-decoration-color: var(--base03);
      }

      .yrk2J .Oef5n {
        color: var(--base03) !important;
      }

      .yrk2J.lR\+Yr > svg {
        color: var(--base03) !important;
      }

      .yrk2J.lR\+Yr.o7TbF {
        background-color: var(--base02) !important;
      }

      .yrk2J.lR\+Yr.CVZh2 {
        background-color: var(--base0D) !important;
      }

      .yrk2J.lR\+Yr.WMAFH {
        background-color: var(--base0B) !important;
      }

      .yrk2J.lR\+Yr.fuDyz {
        background-color: var(--base09) !important;
      }

      .yrk2J.lR\+Yr.fuDyz > svg {
        color: var(--base06) !important;
      }

      .yrk2J.lR\+Yr.\+uBAX {
        background-color: var(--base09) !important;
      }

      .yrk2J.lR\+Yr.Q9M4y {
        background-color: var(--base07) !important;
      }

      .yrk2J.lR\+Yr.hTKKI {
        background-color: var(--base07) !important;
      }

      .yrk2J.lR\+Yr.LL9xZ {
        background-color: var(--base05) !important;
      }

      .yrk2J.lR\+Yr.LL9xZ > svg {
        color: var(--base05) !important;
      }

      .yrk2J.pjAkE.o7TbF {
        background-color: var(--base05) !important;
      }

      .yrk2J.pjAkE.CVZh2 {
        background-color: var(--base0D) !important;
      }

      .yrk2J.pjAkE.WMAFH {
        background-color: var(--base00) !important;
      }

      .yrk2J.pjAkE.fuDyz {
        background-color: var(--base00) !important;
      }

      .yrk2J.pjAkE.\+uBAX {
        background-color: var(--base00) !important;
      }

      .yrk2J.pjAkE.Q9M4y {
        background-color: var(--base03) !important;
      }

      .yrk2J.pjAkE.hTKKI {
        background-color: var(--base02) !important;
      }

      .yrk2J.pjAkE.LL9xZ {
        background-color: var(--base05) !important;
      }

      .yrk2J.chVPT {
        border-color: var(--base03) !important;
      }

      .yrk2J.chVPT.JiFJP {
        border-color: var(--base03) !important;
      }

      .yrk2J.chVPT.e87D2 {
        border-color: var(--base03) !important;
      }

      .yrk2J.chVPT.CVZh2 {
        border-color: var(--base03) !important;
      }

      .yrk2J.chVPT.WMAFH {
        border-color: var(--base03) !important;
      }

      .yrk2J.chVPT.fuDyz {
        border-color: var(--base03) !important;
      }

      .yrk2J.chVPT.\+uBAX {
        border-color: var(--base03) !important;
      }

      .yrk2J.chVPT.Q9M4y {
        border-color: var(--base03) !important;
      }

      .yrk2J.chVPT.hTKKI {
        border-color: var(--base03) !important;
      }

      .yrk2J.chVPT.LL9xZ {
        border-color: var(--base03) !important;
      }

      .yrk2J.cY9T\+.o7TbF > svg {
        color: var(--base05) !important;
      }

      .yrk2J.-MULt {
        background-color: var(--base02) !important;
      }

      .yrk2J.chVPT.CVZh2 > svg,
      .yrk2J.pjAkE.CVZh2 > svg,
      .yrk2J.-MULt.CVZh2 > svg,
      .yrk2J.cY9T\+.CVZh2 > svg {
        color: var(--base0D) !important;
      }

      .yrk2J.chVPT.WMAFH > svg,
      .yrk2J.pjAkE.WMAFH > svg,
      .yrk2J.-MULt.WMAFH > svg,
      .yrk2J.cY9T\+.WMAFH > svg {
        color: var(--base03) !important;
      }

      .yrk2J.chVPT.fuDyz > svg,
      .yrk2J.pjAkE.fuDyz > svg,
      .yrk2J.-MULt.fuDyz > svg,
      .yrk2J.cY9T\+.fuDyz > svg {
        color: var(--base0F) !important;
      }

      .yrk2J.chVPT.\+uBAX > svg,
      .yrk2J.pjAkE.\+uBAX > svg,
      .yrk2J.-MULt.\+uBAX > svg,
      .yrk2J.cY9T\+.\+uBAX > svg {
        color: var(--base09) !important;
      }

      .yrk2J.chVPT.Q9M4y > svg,
      .yrk2J.pjAkE.Q9M4y > svg,
      .yrk2J.-MULt.Q9M4y > svg,
      .yrk2J.cY9T\+.Q9M4y > svg {
        color: var(--base0E) !important;
      }

      .yrk2J.chVPT.hTKKI > svg,
      .yrk2J.pjAkE.hTKKI > svg,
      .yrk2J.-MULt.hTKKI > svg,
      .yrk2J.cY9T\+.hTKKI > svg {
        color: var(--base0D) !important;
      }

      .yrk2J.chVPT.LL9xZ > svg,
      .yrk2J.pjAkE.LL9xZ > svg,
      .yrk2J.-MULt.LL9xZ > svg,
      .yrk2J.cY9T\+.LL9xZ > svg {
        color: var(--base05) !important;
      }

      .JIy08.ZBzXt {
        background-color: var(--base00) !important;
      }

      .DbWPH:focus-visible {
        outline-color: var(--base03) !important;
      }

      .DbWPH.AO9VT {
        background-color: var(--base02) !important;
      }

      .DbWPH.AO9VT:hover {
        background-color: var(--base02) !important;
      }

      .DbWPH.AO9VT:active {
        background-color: var(--base02) !important;
      }

      .DbWPH.AO9VT > svg {
        color: var(--base03) !important;
      }

      .DbWPH.AO9VT::after {
        border-color: var(--base03) !important;
      }

      .DbWPH.AO9VT._8ou7d {
        background-color: var(--base0D) !important;
      }

      .DbWPH.AO9VT._8ou7d:hover {
        background-color: var(--base05) !important;
      }

      .DbWPH.AO9VT._8ou7d:active {
        background-color: var(--base05) !important;
      }

      .DbWPH.AO9VT.\+A4D- {
        background-color: var(--base05) !important;
      }

      .DbWPH.AO9VT.hhQI- {
        background-color: var(--base02) !important;
      }

      .DbWPH.AO9VT.hhQI- > svg {
        color: var(--base05) !important;
      }

      .DbWPH.QJeAf {
        background-color: var(--base02) !important;
      }

      .DbWPH.QJeAf:hover {
        background-color: var(--base02) !important;
      }

      .DbWPH.QJeAf:active {
        background-color: var(--base02) !important;
      }

      .DbWPH.QJeAf > svg {
        color: var(--base06) !important;
      }

      .DbWPH.QJeAf._8ou7d {
        background-color: var(--base0D) !important;
      }

      .DbWPH.QJeAf._8ou7d:hover {
        background-color: var(--base0D) !important;
      }

      .DbWPH.QJeAf._8ou7d:active {
        background-color: var(--base0D) !important;
      }

      .DbWPH.QJeAf._8ou7d > svg {
        color: var(--base0D) !important;
      }

      .DbWPH.QJeAf.\+A4D- {
        background-color: var(--base0D) !important;
      }

      .DbWPH.QJeAf.\+A4D- > svg {
        color: var(--base0D) !important;
      }

      .DbWPH.QJeAf.hhQI- {
        background-color: var(--base02) !important;
      }

      .DbWPH.QJeAf.hhQI- > svg {
        color: var(--base05) !important;
      }

      .DbWPH.GfrH- {
        background-color: var(--base02) !important;
      }

      .DbWPH.GfrH-:hover {
        background-color: var(--base02) !important;
      }

      .DbWPH.GfrH-:active {
        background-color: var(--base02) !important;
      }

      .DbWPH.GfrH- > svg {
        color: var(--base06) !important;
      }

      .DbWPH.GfrH-.\+A4D- {
        background-color: var(--base05) !important;
      }

      .DbWPH.GfrH-.hhQI- {
        background-color: var(--base02) !important;
      }

      .DbWPH.GfrH-.hhQI- > svg {
        color: var(--base05) !important;
      }

      .DbWPH._80pp5 {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .DbWPH._80pp5:hover {
        background-color: var(--base02) !important;
      }

      .DbWPH._80pp5:active {
        background-color: var(--base02) !important;
      }

      .DbWPH._80pp5 > svg {
        color: var(--base06) !important;
      }

      .DbWPH._80pp5._8ou7d {
        border-color: var(--base03) !important;
      }

      .DbWPH._80pp5._8ou7d {
        background-color: var(--base0D) !important;
      }

      .DbWPH._80pp5._8ou7d:hover {
        background-color: var(--base0D) !important;
      }

      .DbWPH._80pp5._8ou7d:active {
        background-color: var(--base0D) !important;
      }

      .DbWPH._80pp5._8ou7d > svg {
        color: var(--base0D) !important;
      }

      .DbWPH._80pp5.\+A4D- {
        background-color: var(--base0D) !important;
        border-color: var(--base03) !important;
      }

      .DbWPH._80pp5.\+A4D- > svg {
        color: var(--base0D) !important;
      }

      .DbWPH._80pp5.hhQI- {
        background-color: var(--base02) !important;
      }

      .DbWPH._80pp5.hhQI- > svg {
        color: var(--base05) !important;
      }

      .DbWPH.e6utE {
        background-color: var(--base02) !important;
      }

      .DbWPH.e6utE:hover {
        background-color: var(--base02) !important;
      }

      .DbWPH.e6utE > svg {
        color: var(--base06) !important;
      }

      .DbWPH.e6utE.hhQI- {
        background-color: var(--base02) !important;
      }

      .DbWPH.e6utE.hhQI- > svg {
        color: var(--base05) !important;
      }

      .nP2Iz {
        background-color: var(--base02) !important;
      }

      .nV\+Zf {
        background-color: var(--base05) !important;
        color: var(--base06) !important;
      }

      .nV\+Zf:focus,
      .nV\+Zf:focus-visible,
      .nV\+Zf:hover,
      .nV\+Zf.ICyTN {
        background-color: var(--base05) !important;
      }

      .nV\+Zf:active {
        background-color: var(--base05) !important;
      }

      .nV\+Zf mark {
        color: var(--base06) !important;
        background-color: var(--base02) !important;
      }

      .hGkY4 {
        background-color: var(--base02) !important;
      }

      .Mhctd {
        background-color: var(--base02) !important;
      }

      .LCa9c {
        background-color: var(--base02) !important;
      }

      .LCa9c:hover,
      .LCa9c.KGy9g {
        background-color: var(--base03) !important;
      }

      .LCa9c input {
        background-color: var(--base02) !important;
        outline-color: var(--base05) !important;
        color: var(--base05) !important;
      }

      .LCa9c input::placeholder {
        color: var(--base05) !important;
      }

      .LCa9c.aqrhN:hover {
        background-color: var(--base03) !important;
      }

      .LCa9c.aqrhN input {
        color: var(--base06) !important;
      }

      .LCa9c._0nXga {
        background-color: var(--base03) !important;
      }

      .fiXeK::after {
        border-color: var(--base03) !important;
      }

      .fiXeK:hover::after,
      .fiXeK:active::after {
        border-color: var(--base03) !important;
      }

      .XQZkh {
        background-color: var(--base02) !important;
      }

      .MvJOD {
        background-color: var(--base03) !important;
      }

      .p7p-M::before {
        background-color: var(--base02) !important;
      }

      .Dc4Pp:focus-visible {
        outline-color: var(--base03) !important;
      }

      .Dc4Pp.ZmMV1 {
        background-color: var(--base00) !important;
        border-color: var(--base03) !important;
      }

      .Dc4Pp.ZmMV1:hover {
        background-color: var(--base02) !important;
      }

      .Dc4Pp.ZmMV1:active {
        background-color: var(--base03) !important;
      }

      .Dc4Pp.ZmMV1::after {
        border-color: var(--base03) !important;
      }

      .Dc4Pp.ZmMV1.DS619 {
        border-color: var(--base03) !important;
      }

      .Dc4Pp.ZmMV1.DS619::after {
        border-color: var(--base03) !important;
      }

      .Dc4Pp.GPfAX {
        background-color: var(--base00) !important;
        border-color: var(--base03) !important;
      }

      .Dc4Pp.GPfAX:hover {
        background-color: var(--base02) !important;
      }

      .Dc4Pp.GPfAX:active {
        background-color: var(--base02) !important;
      }

      .Dc4Pp.GPfAX::after {
        border-color: var(--base03) !important;
      }

      .Dc4Pp.MxosW {
        background-color: var(--base00) !important;
        border-color: var(--base03) !important;
      }

      .Dc4Pp.MxosW:hover {
        background-color: var(--base02) !important;
      }

      .Dc4Pp.MxosW:active {
        background-color: var(--base03) !important;
      }

      .Dc4Pp.MxosW::after {
        border-color: var(--base03) !important;
      }

      .Dc4Pp.gHlte {
        background-color: var(--base00) !important;
        border-color: var(--base03) !important;
      }

      .Dc4Pp.gHlte:hover {
        background-color: var(--base02) !important;
      }

      .Dc4Pp.gHlte:active {
        background-color: var(--base03) !important;
      }

      .Dc4Pp.gHlte::after {
        border-color: var(--base03) !important;
      }

      .Dc4Pp.loRtf {
        background-color: var(--base0D) !important;
        border-color: var(--base03) !important;
      }

      .Dc4Pp.loRtf:hover {
        background-color: var(--base0D) !important;
      }

      .Dc4Pp.loRtf:active {
        background-color: var(--base0D) !important;
      }

      .Dc4Pp.XCy8O {
        border-color: var(--base03) !important;
        background-color: var(--base00) !important;
      }

      .Dc4Pp.XCy8O:hover {
        background-color: var(--base00) !important;
      }

      .Dc4Pp.XCy8O:active {
        background-color: var(--base00) !important;
      }

      .glnLL {
        color: var(--base04) !important;
      }

      .glnLL.QpiAH {
        color: var(--base0D) !important;
      }

      .uKlUP {
        color: var(--base09) !important;
      }

      .uKlUP.aFD3X {
        color: var(--base0D) !important;
      }

      .bF7Jk {
        background-color: var(--base05) !important;
        border-color: var(--base03) !important;
      }

      .bF7Jk:hover {
        background-color: var(--base05) !important;
      }

      .bF7Jk:active {
        background-color: var(--base05) !important;
      }

      .bF7Jk:focus-visible {
        outline-color: var(--base03) !important;
      }

      .bF7Jk .du9Hx {
        color: var(--base06) !important;
      }

      .bF7Jk.MZxa5 {
        border-color: var(--base03) !important;
        background-color: var(--base0D) !important;
      }

      .bF7Jk.MZxa5 .du9Hx {
        color: var(--base0D) !important;
      }

      .bF7Jk.MZxa5:hover {
        background-color: var(--base02) !important;
      }

      .bF7Jk.MZxa5:active {
        background-color: var(--base02) !important;
      }

      .bF7Jk.bhLaa {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .bF7Jk.bhLaa .du9Hx {
        color: var(--base05) !important;
      }

      .alC0n {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .alC0n.fT2\+f {
        background-color: var(--base05) !important;
        border-color: var(--base03) !important;
      }

      .alC0n.ORc65 {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .alC0n.ORc65 > * {
        color: var(--base05) !important;
      }

      [data-theme="dark"] .alC0n.ORc65 {
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] .alC0n.ORc65 > * {
        color: var(--base06) !important;
      }

      .alC0n.p6hS8 {
        background-color: var(--base02) !important;
      }

      .alC0n.p6hS8 > * {
        color: var(--base03) !important;
      }

      .ZYhtf {
        background-color: var(--base00) !important;
      }

      .EgoOb::before {
        background-color: var(--base02) !important;
      }

      .MlS4n {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .MlS4n:focus-visible {
        outline-color: var(--base03) !important;
      }

      .MlS4n:hover {
        background-color: var(--base02) !important;
      }

      .MlS4n.zXQbD > svg {
        background-color: var(--base0D) !important;
        fill: var(--base02) !important;
        color: var(--base03) !important;
      }

      .Ln7PS {
        border-color: var(--base03) !important;
        background-color: var(--base0D) !important;
      }

      .Ln7PS:hover {
        background-color: var(--base02) !important;
      }

      .rB3Pp {
        background-color: var(--base05) !important;
      }

      .rB3Pp:hover {
        background-color: var(--base05) !important;
      }

      .rB3Pp:active {
        background-color: var(--base05) !important;
      }

      .rB3Pp:focus-visible {
        outline-color: var(--base03) !important;
      }

      .rB3Pp.CJgwK {
        background-color: var(--base0D) !important;
      }

      .rB3Pp.CJgwK:hover {
        background-color: var(--base02) !important;
      }

      .rB3Pp.CJgwK:active {
        background-color: var(--base02) !important;
      }

      .TJHKW {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .MbH3k {
        text-decoration-color: var(--base03);
        color: var(--base06) !important;
      }

      .IPuO1._29Lu1 {
        color: var(--base03) !important;
      }

      .IPuO1._29Lu1 .UZQ-Q {
        color: var(--base0B) !important;
      }

      .IPuO1 svg {
        color: var(--base06) !important;
      }

      .UVQ1Z {
        color: var(--base03) !important;
      }

      .UVQ1Z:hover {
        color: var(--base03) !important;
      }

      .snr\+r {
        color: var(--base04) !important;
      }

      [data-theme="dark"] .snr\+r {
        color: var(--base0D) !important;
      }

      .-\34 Dy1 {
        background-color: var(--base03) !important;
      }

      .gPxAU {
        background-color: var(--base02) !important;
      }

      .-\34 Dy1 .eQeV9 {
        color: var(--base06) !important;
      }

      .-\34 Dy1 .eQeV9:hover {
        color: var(--base06) !important;
        background-color: var(--base05) !important;
        text-decoration-color: var(--base03);
      }

      .-\34 Dy1 .eQeV9:active {
        background-color: var(--base05) !important;
      }

      .-\34 Dy1 .eQeV9[aria-selected="true"] {
        color: var(--base0D) !important;
        background-color: var(--base0D) !important;
      }

      .-\34 Dy1 .eQeV9:focus-visible {
        outline-color: var(--base03) !important;
      }

      .pxnXz {
        border-bottom-color: var(--base03) !important;
      }

      .pxnXz ._0NwoY {
        color: var(--base06) !important;
      }

      .mKYd\+._6aq5J {
        color: var(--base03) !important;
      }

      .AF-KN {
        background-color: var(--base00) !important;
      }

      ._6J9We {
        color: var(--base06) !important;
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] ._6J9We {
        color: var(--base04) !important;
        background-color: var(--base02) !important;
      }

      ._6J9We button:hover {
        text-decoration-color: var(--base03);
      }

      .AWlbS {
        background-color: var(--base02) !important;
        color: var(--base08) !important;
      }

      [data-device="mobile"] ._6be7i.-SLgY + .-SLgY::after,
      [data-device="mobile"] .uR-Na:hover.-SLgY + .-SLgY::after {
        border-top-color: var(--base03) !important;
      }

      ._6be7i::after,
      .uR-Na:hover::after {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      [data-theme="dark"] ._6be7i::after,
      [data-theme="dark"] .uR-Na:hover::after {
        border-color: var(--base03) !important;
      }

      .uR-Na.hamAK::after {
        border-color: var(--base03) !important;
      }

      .DviSH {
        background-color: var(--base02) !important;
        color: var(--base06) !important;
      }

      [data-device="desktop"] .DviSH {
        background-color: var(--base02) !important;
      }

      .dLHOQ {
        color: var(--base04) !important;
      }

      .VKyrx {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      ._9mYG\+ {
        background-color: var(--base02) !important;
      }

      [data-device="mobile"] ._9mYG\+ {
        background-color: var(--base02) !important;
      }

      [data-device="mobile"] .T\+qo4 img,
      [data-device="mobile"] .T\+qo4 svg {
        background-color: var(--base02) !important;
      }

      .oUxVN img {
        background-color: var(--base02) !important;
      }

      ._3BUQv {
        background-color: var(--base02) !important;
      }

      ._3BUQv:hover {
        background-color: var(--base05) !important;
      }

      ._3BUQv:active {
        background-color: var(--base05) !important;
      }

      ._3BUQv:focus-visible {
        outline-color: var(--base03) !important;
      }

      ._3BUQv[aria-selected] {
        outline-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .thSl\+ {
        border-color: var(--base03) !important;
      }

      .mxiPJ {
        background-color: var(--base02) !important;
      }

      button:has(.mNqQa):focus-visible {
        outline-color: var(--base03) !important;
      }

      .mNqQa {
        color: var(--base05) !important;
      }

      .mNqQa:not(.\+-RGT):hover,
      .mNqQa:not(.\+-RGT):active {
        color: var(--base06) !important;
      }

      .\+-RGT {
        color: var(--base0D) !important;
      }

      ._0kkU2 {
        color: var(--base05) !important;
      }

      .cSfy7 input {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
        color: var(--base06) !important;
      }

      .cSfy7 input::placeholder {
        color: var(--base05) !important;
      }

      .cSfy7 input:hover {
        background-color: var(--base02) !important;
        color: var(--base06) !important;
      }

      .cSfy7 input:active {
        background-color: var(--base02) !important;
      }

      .cSfy7 input:focus {
        outline-color: var(--base03) !important;
        color: var(--base06) !important;
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .cSfy7 input:disabled {
        color: var(--base05) !important;
      }

      .cSfy7 input:disabled::placeholder {
        color: var(--base05) !important;
      }

      .jhk0m {
        color: var(--base05) !important;
      }

      .cSfy7 input:disabled ~ .jhk0m {
        color: var(--base05) !important;
      }

      .mOqVs .DKNbf:has(img) {
        background-color: var(--base00) !important;
      }

      .mOqVs img {
        background-color: var(--base00) !important;
      }

      .oT5cL:hover .W3bHa {
        text-decoration-color: var(--base03);
      }

      .RPtIU svg {
        color: var(--base05) !important;
      }

      .sVuOo {
        text-decoration-color: var(--base03);
      }

      .Rehvq {
        background-color: var(--base02) !important;
      }

      .FZ9uR {
        background-color: var(--base05) !important;
      }

      .L40fD {
        background-color: var(--base02) !important;
      }

      .eP9XB {
        background-color: var(--base02) !important;
      }

      .Y7n5i {
        background-color: var(--base05) !important;
      }

      .o19mk {
        color: var(--base05) !important;
      }

      .o19mk svg {
        color: var(--base09) !important;
      }

      .s8USJ svg {
        color: var(--base03) !important;
      }

      [data-theme="dark"] .s8USJ svg {
        color: var(--base0B) !important;
      }

      .aJMvE {
        background-color: var(--base02) !important;
      }

      .aJMvE:hover {
        background-color: var(--base0D) !important;
      }

      .aJMvE span {
        color: var(--base06) !important;
      }

      .rCcvC,
      ._2j8Gj,
      [data-device="desktop"] .QXKNQ:hover {
        border-color: var(--base03) !important;
        background-color: var(--base0D) !important;
      }

      .QXKNQ {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      ._2j8Gj {
        border-color: var(--base03) !important;
      }

      [data-theme="dark"] ._2j8Gj {
        border-color: var(--base03) !important;
      }

      .G3voO {
        outline-color: var(--base03) !important;
        color: var(--base06) !important;
        background-color: var(--base02) !important;
      }

      .G3voO:hover {
        background-color: var(--base02) !important;
        color: var(--base06) !important;
      }

      .G3voO:focus,
      .G3voO[aria-expanded="true"] {
        color: var(--base06) !important;
        background-color: var(--base02) !important;
      }

      .G3voO::placeholder {
        color: var(--base05) !important;
      }

      select.G3voO {
        background-color: var(--base05) !important;
        border-color: var(--base03) !important;
      }

      select.G3voO:focus,
      select.G3voO[aria-expanded="true"] {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .SpkFS + .Prk3L {
        color: var(--base03) !important;
      }

      .fSA3y {
        color: var(--base04) !important;
      }

      .lRIe\+,
      .e08Ml {
        color: var(--base06) !important;
      }

      .vvPb\+ {
        color: var(--base06) !important;
      }

      .jn-PY {
        color: var(--base06) !important;
      }

      ._4Q6w- {
        color: var(--base06) !important;
      }

      .G3voO.jBw8f {
        background-color: var(--base00) !important;
      }

      .G3voO.jBw8f .lRIe\+,
      .G3voO.jBw8f .vvPb\+ {
        color: var(--base09) !important;
      }

      .G3voO.iV-ZO {
        background-color: var(--base00) !important;
      }

      .G3voO.iV-ZO .lRIe\+,
      .G3voO.iV-ZO .vvPb\+ {
        color: var(--base03) !important;
      }

      select.G3voO:not(:focus) {
        color: var(--base04) !important;
      }

      select.G3voO.SpkFS {
        color: var(--base06) !important;
      }

      .yl\+8y {
        background-color: var(--base02) !important;
        color: var(--base0B) !important;
      }

      .yl\+8y::after {
        border-color: var(--base03) !important;
        border-bottom-color: transparent !important;
      }

      .i3XL2 ._7CaMi {
        background-color: var(--base0D) !important;
      }

      .i3XL2:hover ._7CaMi {
        background-color: var(--base0D) !important;
      }

      .HZJZ- {
        background-color: var(--base02) !important;
      }

      .cQSrs {
        background-color: var(--base02) !important;
      }

      .oZycY {
        background-color: var(--base02) !important;
      }

      .rOlrV ._5Nu9F {
        background-color: var(--base02) !important;
      }

      .rOlrV .xo\+GU {
        background-color: var(--base02) !important;
      }

      .rOlrV .xo\+GU ._8y9t1 {
        color: var(--base06) !important;
      }

      [data-device="mobile"] .aCHjJ > * + * {
        border-top-color: var(--base03) !important;
      }

      .uSXI- {
        color: var(--base04) !important;
      }

      .uSXI- a {
        color: var(--base03) !important;
      }

      .uSXI- a:hover {
        background-color: var(--base02) !important;
        color: var(--base03) !important;
      }

      [data-theme="dark"] .uSXI- a:hover {
        background-color: var(--base03) !important;
      }

      .A38tf {
        background-color: var(--base02) !important;
        color: var(--base05) !important;
      }

      [data-theme="dark"] .A38tf {
        background-color: var(--base02) !important;
      }

      .U0tDV {
        color: var(--base04) !important;
      }

      .U0tDV:hover {
        color: var(--base03) !important;
      }

      .vjmPI {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .vjmPI svg {
        color: var(--base03) !important;
      }

      input:hover + .vjmPI {
        background-color: var(--base02) !important;
      }

      input:active + .vjmPI {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      input:focus-visible + .vjmPI {
        border-color: var(--base03) !important;
        background-color: var(--base05) !important;
      }

      input:disabled + .vjmPI {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      input:checked + .vjmPI {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      input:checked:hover + .vjmPI {
        background-color: var(--base02) !important;
      }

      input:checked:active + .vjmPI {
        background-color: var(--base02) !important;
      }

      input:checked:focus-visible + .vjmPI {
        border-color: var(--base03) !important;
      }

      input:checked:disabled + .vjmPI {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      input:checked:disabled + .vjmPI svg {
        color: var(--base05) !important;
      }

      .vjmPI.AaHz- {
        border-color: var(--base03) !important;
        background-color: var(--base00) !important;
      }

      .vjmPI.AaHz- svg {
        color: var(--base04) !important;
      }

      input:active + .vjmPI.AaHz- {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      input:checked + .vjmPI.AaHz- {
        background-color: var(--base02) !important;
      }

      input:checked:hover + .vjmPI.AaHz- {
        background-color: var(--base02) !important;
      }

      input:checked:active + .vjmPI.AaHz- {
        background-color: var(--base0A) !important;
        border-color: var(--base03) !important;
      }

      .Zjivx a {
        color: var(--base0D) !important;
        text-decoration-color: var(--base03);
      }

      .dMACm {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      [data-device="mobile"] .Oagey ._7SN\+k {
        border-top-color: var(--base03) !important;
      }

      [data-device="desktop"] .dwnkl .Md8Ge {
        border-color: var(--base03) !important;
      }

      ._7-ZON {
        text-decoration-color: var(--base03);
      }

      .nSmMx > mark {
        background-color: var(--base02) !important;
        color: var(--base05) !important;
      }

      .jWvgD.WqloB {
        background-color: var(--base02) !important;
        color: var(--base08) !important;
        border-color: var(--base03) !important;
      }

      [data-theme="dark"] .jWvgD.WqloB {
        background-color: var(--base00) !important;
      }

      .jWvgD.Y0HLK {
        background-color: var(--base02) !important;
        color: var(--base05) !important;
        border-color: var(--base03) !important;
      }

      [data-theme="dark"] .jWvgD.Y0HLK {
        color: var(--base04) !important;
        background-color: var(--base00) !important;
        border-color: var(--base03) !important;
      }

      .eYgbo:hover {
        text-decoration-color: var(--base03);
      }

      .eYgbo:hover .cQL-8 {
        text-decoration-color: var(--base03);
      }

      .yWeiT {
        background-color: var(--base02) !important;
      }

      ._8Jm2Z:hover {
        text-decoration-color: var(--base03);
      }

      ._8Jm2Z:hover ._4ZUTA {
        text-decoration-color: var(--base03);
      }

      .fa9LO mark {
        background-color: var(--base02) !important;
        color: var(--base03) !important;
      }

      .TLdKv {
        background-color: var(--base00) !important;
      }

      .Tl\+mE {
        background-color: var(--base02) !important;
      }

      .semh- {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .CmlQw {
        border-color: var(--base03) !important;
      }

      .nHAxb {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] .nHAxb {
        background-color: var(--base02) !important;
      }

      [data-device="desktop"] .nHAxb {
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] .semh- {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      [data-theme="dark"] .CmlQw {
        border-color: var(--base03) !important;
      }

      .eU85w:focus-visible {
        outline-color: var(--base03) !important;
      }

      ._8WR13 {
        color: var(--base06) !important;
      }

      .-\31 eXC {
        background-color: var(--base02) !important;
      }

      .-\31 eXC:hover {
        background-color: var(--base02) !important;
      }

      .-\31 eXC:active {
        background-color: var(--base02) !important;
      }

      .bDAI8 {
        color: var(--base06) !important;
      }

      .-\31 eXC:focus-visible {
        outline-color: var(--base03) !important;
      }

      .kHjJe {
        border-color: var(--base03) !important;
      }

      ._1axv9:not(:last-child) {
        text-decoration-color: var(--base03);
      }

      [data-theme="dark"] ._4FVPI {
        border-color: var(--base03) !important;
      }

      ._4FVPI._6KAon {
        background-color: var(--base02) !important;
      }

      ._4FVPI.TTeFZ {
        background-color: var(--base02) !important;
      }

      ._4FVPI.lIF4I {
        background-color: var(--base02) !important;
      }

      ._4FVPI.mtYUs {
        background-color: var(--base02) !important;
      }

      .MAP3J {
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] .MAP3J {
        border-color: var(--base03) !important;
      }

      .MAP3J .cIfcH {
        background-color: var(--base02) !important;
      }

      .MAP3J .P\+4gq {
        background-color: var(--base02) !important;
      }

      ._1jZki {
        background-color: var(--base02) !important;
      }

      .kRPyC {
        background-color: var(--base02) !important;
      }

      .kRPyC:hover {
        background-color: var(--base05) !important;
      }

      .vCohT {
        background-color: var(--base00) !important;
      }

      .YNlm9 {
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] .YNlm9 {
        background-color: var(--base02) !important;
      }

      .YNlm9 .v3ahK {
        border-color: var(--base03) !important;
      }

      .YNlm9 .v3ahK > svg {
        color: var(--base06) !important;
      }

      .YNlm9 .s6Wj\+ {
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] .tCDVp {
        color: var(--base06) !important;
      }

      .GSMTL .jjJUk {
        border-color: var(--base03) !important;
      }

      .GSMTL .jjJUk .TDQZH {
        background-color: var(--base02) !important;
      }

      .eRK8v {
        border-color: var(--base03) !important;
        background-color: var(--base05) !important;
      }

      .eRK8v:focus-visible {
        outline-color: var(--base03) !important;
      }

      .eRK8v:hover {
        background-color: var(--base05) !important;
      }

      ._1mLCe {
        border-color: var(--base03) !important;
        background-color: var(--base03) !important;
      }

      ._1mLCe:hover {
        background-color: var(--base02) !important;
      }

      ._5FucA {
        color: var(--base0E) !important;
      }

      .paet0 {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .paet0:hover {
        background-color: var(--base02) !important;
      }

      .MhmWC {
        color: var(--base0D) !important;
      }

      .Y6\+Fe {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      .Y6\+Fe:hover {
        background-color: var(--base02) !important;
      }

      .vEoam {
        color: var(--base0F) !important;
      }

      .JhQEf {
        border-color: var(--base03) !important;
        background-color: var(--base00) !important;
      }

      .JhQEf:hover {
        background-color: var(--base02) !important;
      }

      .m0pxm {
        color: var(--base04) !important;
      }

      .iyEzX {
        border-color: var(--base03) !important;
        background-color: var(--base0D) !important;
      }

      .iyEzX:hover {
        background-color: var(--base0D) !important;
      }

      .zcSpG {
        color: var(--base0D) !important;
      }

      .szxbR {
        border-color: var(--base03) !important;
        background-color: var(--base00) !important;
      }

      .szxbR:hover {
        background-color: var(--base02) !important;
      }

      .LEsLX {
        color: var(--base08) !important;
      }

      .-L64N {
        background-color: var(--base02) !important;
      }

      .tdl8\+:hover {
        text-decoration-color: var(--base06) !important;
      }

      .tdl8\+:focus-visible {
        outline-color: var(--base03) !important;
      }

      .zCdz7 {
        background-color: var(--base02) !important;
      }

      ._1yk5w {
        background-color: var(--base02) !important;
      }

      ._8JuYE {
        color: var(--base06) !important;
        fill: var(--base06) !important;
      }

      .Z2hSz svg {
        color: var(--base06) !important;
      }

      .hSlLL {
        border-top-color: var(--base03) !important;
      }

      .xuG6k a {
        color: var(--base04) !important;
      }

      .xuG6k .Kzup3 .tdl8\+ {
        color: var(--base06) !important;
      }

      .xuG6k .Kzup3 .tdl8\+:hover {
        color: var(--base06) !important;
        background-color: var(--base05) !important;
        text-decoration-color: var(--base03);
      }

      .xuG6k .Kzup3 .tdl8\+:active {
        background-color: var(--base05) !important;
      }

      .xuG6k .Kzup3 .tdl8\+[aria-selected="true"] {
        color: var(--base0D) !important;
        background-color: var(--base0D) !important;
      }

      .xuG6k .Kzup3 .tdl8\+:focus-visible {
        outline-color: var(--base03) !important;
      }

      .HYSI4 {
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] .HYSI4 {
        background-color: var(--base02) !important;
      }

      .jawSH {
        background-color: var(--base02) !important;
      }

      ._6oeFB {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      ._6oeFB:hover {
        background-color: var(--base03) !important;
      }

      .QFJ8D {
        color: var(--base06) !important;
      }

      .CluUC {
        color: var(--base06) !important;
      }

      .pps-L {
        background-color: var(--base02) !important;
      }

      ._29hzP {
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] ._29hzP {
        background-color: var(--base00) !important;
      }

      .VjBsg {
        color: var(--base03) !important;
      }

      .puJLH {
        color: var(--base04) !important;
        border-bottom-color: var(--base03) !important;
      }

      .puJLH:last-child {
        border-color: var(--base03) !important;
      }

      [data-theme="dark"] .puJLH:last-child {
        border-color: var(--base03) !important;
      }

      .Z6RFp {
        fill: var(--base06) !important;
        color: var(--base06) !important;
      }

      .dvBtD {
        color: var(--base04) !important;
      }

      .tCv-z .drawer-header {
        border-bottom-color: var(--base03) !important;
      }

      .TWPOo .drawer-header {
        border-bottom-color: var(--base04) !important;
      }

      ._3JcxS {
        background-color: var(--base02) !important;
      }

      .rQHae {
        background-color: var(--base02) !important;
      }

      ._0qqv2 {
        color: var(--base06) !important;
        background-color: var(--base03) !important;
      }

      .h2PyG {
        color: var(--base03) !important;
      }

      .h2PyG:hover {
        color: var(--base03) !important;
      }

      .maplibregl-ctrl-group {
        background-color: var(--base02) !important;
      }

      .maplibregl-ctrl-group button {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
        outline-color: var(--base05) !important;
      }

      .maplibregl-ctrl-group button + button {
        border-top-color: var(--base06) !important;
      }

      .maplibregl-ctrl button::-moz-focus-inner {
        border-color: var(--base03) !important;
      }

      .maplibregl-ctrl button:not(:disabled):hover {
        background-color: var(--base03) !important;
      }

      .maplibregl-ctrl.maplibregl-ctrl-attrib {
        background-color: var(--base02) !important;
      }

      .maplibregl-ctrl-attrib a {
        color: var(--base04) !important;
        text-decoration-color: var(--base03);
      }

      .maplibregl-ctrl-attrib a:hover {
        color: var(--base03) !important;
        text-decoration-color: var(--base03);
      }

      .maplibregl-ctrl-scale {
        background-color: var(--base02) !important;
        border-right-color: var(--base03) !important;
        border-bottom-color: var(--base04) !important;
        border-left-color: var(--base03) !important;
        border-top-color: var(--base04) !important;
        color: var(--base05) !important;
      }

      .maplibregl-popup-tip {
        border-color: var(--base03) !important;
      }

      .maplibregl-popup-anchor-top .maplibregl-popup-tip {
        border-bottom-color: var(--base06) !important;
        border-top-color: var(--base03) !important;
      }

      .maplibregl-popup-anchor-top-left .maplibregl-popup-tip {
        border-bottom-color: var(--base06) !important;
        border-left-color: var(--base04) !important;
        border-top-color: var(--base03) !important;
      }

      .maplibregl-popup-anchor-top-right .maplibregl-popup-tip {
        border-bottom-color: var(--base06) !important;
        border-right-color: var(--base04) !important;
        border-top-color: var(--base03) !important;
      }

      .maplibregl-popup-anchor-bottom .maplibregl-popup-tip {
        border-bottom-color: var(--base04) !important;
        border-top-color: var(--base06) !important;
      }

      .maplibregl-popup-anchor-bottom-left .maplibregl-popup-tip {
        border-bottom-color: var(--base03) !important;
        border-left-color: var(--base04) !important;
        border-top-color: var(--base06) !important;
      }

      .maplibregl-popup-anchor-bottom-right .maplibregl-popup-tip {
        border-bottom-color: var(--base03) !important;
        border-right-color: var(--base04) !important;
        border-top-color: var(--base06) !important;
      }

      .maplibregl-popup-anchor-left .maplibregl-popup-tip {
        border-left-color: var(--base03) !important;
        border-right-color: var(--base06) !important;
      }

      .maplibregl-popup-anchor-right .maplibregl-popup-tip {
        border-left-color: var(--base06) !important;
        border-right-color: var(--base04) !important;
      }

      .maplibregl-popup-close-button {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .maplibregl-popup-close-button:hover {
        background-color: var(--base02) !important;
      }

      .maplibregl-popup-content {
        background-color: var(--base02) !important;
      }

      .maplibregl-user-location-dot,
      .maplibregl-user-location-dot::before {
        background-color: var(--base0D) !important;
      }

      .maplibregl-user-location-dot::after {
        border-top-color: var(--base06) !important;
        border-right-color: var(--base06) !important;
        border-bottom-color: var(--base06) !important;
        border-left-color: var(--base06) !important;
      }

      .maplibregl-user-location-dot-stale {
        background-color: var(--base0B) !important;
      }

      .maplibregl-user-location-accuracy-circle {
        background-color: var(--base0D) !important;
      }

      .maplibregl-boxzoom {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      .maplibregl-cooperative-gesture-screen {
        background-color: var(--base02) !important;
        color: var(--base06) !important;
      }

      .GVlEG {
        background-color: var(--base09) !important;
        border-color: var(--base03) !important;
      }

      .GVlEG:hover:not(:focus) {
        background-color: var(--base0D) !important;
        border-color: var(--base03) !important;
      }

      .maplibregl-ctrl-attrib.maplibregl-compact {
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] .maplibregl-ctrl-attrib.maplibregl-compact {
        background-color: var(--base02) !important;
      }

      .maplibregl-ctrl-attrib-inner a {
        color: var(--base06) !important;
      }

      .maplibregl-ctrl-icon:hover,
      .maplibregl-ctrl-group button:hover {
        background-color: var(--base05) !important;
      }

      .maplibregl-ctrl-zoom-out {
        border-top-color: var(--base03) !important;
      }

      .maplibregl-ctrl-group {
        border-color: var(--base03) !important;
        color: var(--base06) !important;
        background-color: var(--base02) !important;
      }

      .maplibregl-ctrl-group:has(:nth-child(2)) button:nth-child(2) {
        border-top-color: var(--base04) !important;
      }

      .maplibregl-ctrl-group:has(:nth-child(2)) button:nth-child(2)::before {
        background-color: var(--base05) !important;
      }

      .maplibregl-ctrl-attrib-button {
        border-color: var(--base03) !important;
        background-color: var(--base02) !important;
      }

      [data-theme="dark"] .maplibregl-ctrl-attrib-button {
        background-color: var(--base02) !important;
      }

      .iFKlt ._1xQVj.iVQuc a,
      .iFKlt ._1xQVj a {
        color: var(--base05) !important;
        text-decoration: none !important;
      }

      .iFKlt ._1xQVj a:hover {
        color: var(--base0C) !important;
      }

      .MlS4n {
        color: var(--base05) !important;
      }

      .MlS4n .JtdkY {
        color: var(--base05) !important;
      }

      .Ln7PS .JtdkY,
      .XprVI.JtdkY {
        color: var(--base00) !important;
        font-weight: 500 !important;
      }

      .LNTPh.JtdkY {
        color: var(--base05) !important;
      }

      .rB3Pp .IXeY3.aVNer {
        color: var(--base00) !important;
      }

      .rB3Pp:hover .IXeY3.aVNer {
        color: var(--base05) !important;
      }

      [data-testid="webNavItem"] .JtdkY,
      [data-testid="imagesNavItem"] .JtdkY,
      [data-testid="videosNavItem"] .JtdkY,
      [data-testid="newsNavItem"] .JtdkY {
        color: var(--base05) !important;
      }

      [data-testid="toggleFiltersButton"] .IXeY3 {
        color: var(--base00) !important;
      }

      .YWOZq.iZqLf.EYnZw {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3) !important;
      }

      .nV\+Zf._1xQVj.\+fQov.NaxuY.KC1qb.BiTHM.MscJs.a2N1U {
        background-color: var(--base02) !important;
        color: var(--base05) !important;
        border-bottom: 1px solid var(--base02) !important;
      }

      .nV\+Zf._1xQVj.\+fQov.NaxuY.KC1qb.BiTHM.MscJs.a2N1U:hover {
        background-color: var(--base02) !important;
      }

      .nV\+Zf._1xQVj.\+fQov.NaxuY.KC1qb.BiTHM.MscJs.a2N1U:focus {
        background-color: var(--base02) !important;
        outline: 2px solid var(--base0D) !important;
        outline-offset: -2px !important;
      }

      .nV\+Zf._1xQVj.\+fQov.NaxuY.KC1qb.BiTHM.MscJs.a2N1U[aria-selected="true"] {
        background-color: var(--base03) !important;
      }

      .SdSgS._1xQVj.iVQuc {
        color: var(--base05) !important;
      }

      .LNTPh.YwJqA._77lLO {
        color: var(--base05) !important;
      }

      .LNTPh.YwJqA._77lLO mark {
        background-color: var(--base0D) !important;
        color: var(--base00) !important;
      }

      .SdSgS svg {
        fill: var(--base04) !important;
      }

      [data-testid="suggest-item"] {
        color: var(--base05) !important;
      }

      [data-testid="suggest-item"]:hover {
        background-color: var(--base02) !important;
      }

      [data-testid="search-suggestions"] {
        background-color: var(--base02) !important;
        border-color: var(--base03) !important;
      }

      [data-testid="search-suggestions"] li {
        background-color: var(--base02) !important;
        color: var(--base05) !important;
      }

      [data-testid="search-suggestions"] li:hover {
        background-color: var(--base02) !important;
      }

      [data-testid="search-suggestions"] mark {
        background-color: var(--base0D) !important;
        color: var(--base00) !important;
      }

      input,
      textarea,
      select {
        border-color: var(--base03) !important;
        background-color: var(--base00) !important;
        color: var(--base05) !important;
      }

      input:focus,
      textarea:focus,
      select:focus {
        border-color: var(--base0D) !important;
        background-color: var(--base00) !important;
      }

      input:hover,
      textarea:hover,
      select:hover {
        border-color: var(--base03) !important;
      }

      button,
      .button-like {
        background-color: var(--base02) !important;
        border-color: var(--base05) !important;
        color: var(--base05) !important;
      }

      button:hover,
      .button-like:hover {
        background-color: var(--base02) !important;
        border-color: var(--base05) !important;
      }

      button:active,
      .button-like:active {
        background-color: var(--base03) !important;
      }

      button.primary,
      .button-primary {
        background-color: var(--base0D) !important;
        border-color: var(--base0D) !important;
        color: var(--base00) !important;
      }

      button.primary:hover,
      .button-primary:hover {
        background-color: var(--base0C) !important;
        border-color: var(--base0C) !important;
      }

      button.danger,
      .button-danger {
        background-color: var(--base08) !important;
        border-color: var(--base08) !important;
        color: var(--base00) !important;
      }

      button.danger:hover,
      .button-danger:hover {
        background-color: var(--base09) !important;
        border-color: var(--base09) !important;
      }

      nav,
      footer,
      .JIy08,
      .ZYhtf {
        display: none !important;
      }
    }
  '';
}
