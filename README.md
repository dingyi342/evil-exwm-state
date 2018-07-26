# evil-exwm-state

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [evil-exwm-state](#evil-exwm-state)
    - [Description](#description)
    - [Install](#install)
        - [Manually](#manually)
    - [Key bindings](#key-bindings)
        - [State transitions](#state-transitions)
        - [exwm state](#exwm-state)
        - [exwm-insert state](#exwm-insert-state)

<!-- markdown-toc end -->

## Description

This package adds two new [Evil][evil-link] states:
- exwm state
- exwm-insert state

## Install

### Manually

Add `evil-exwm-state.el` to your load path. `evil-exwm-state` requires
both `exwm` and `evil` to be installed.

## Key bindings

### State transitions

| Key Binding    | From        | To          |
|----------------|-------------|-------------|
| <kbd>i</kbd>   | exwm        | exwm-insert |

### exwm state

`exwm state` inherits from `motion state`.

### exwm-insert state

`exwm-insert state` inherits from `motion state`.
