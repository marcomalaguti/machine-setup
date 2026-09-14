# Neovim

## 1. Movement (Navigation)
* **h**, **j**, **k**, **l** : basic directional keys (Left, Down, Up, Right).
* **w** : move forward to the start of the next word.
* **b** : move backward to the start of the previous word.
* **e** : move forward to the end of the current word.

## 2. Insert Mode (Writing Text)
* **i** : enter Insert mode before the cursor.
* **a** : enter Insert mode after the cursor.
* **A** : jump to the end of the current line and enter Insert mode.
* **o** : open a new line below the current one and enter Insert mode.
* **O** : open a new line above the current one and enter Insert mode.

## 3. Visual Mode (Selecting Text)
* **v** : start visual selection character by character.
* **V** : start visual selection line by line.

## 4. Deleting & Cutting (The 'd' Operator)
* **x** : delete the single character under the cursor.
* **dw** : delete (cut) from the cursor to the end of the word.
* **dd** : delete (cut) the entire current line.
* **di"** : delete everything **inside** double quotes `"..."`.
* **di(** : delete everything **inside** parentheses `(...)`.
* **di{** : delete everything **inside** curly braces `{...}`.

## 5. Changing Text (Delete + Insert Mode)
* **cw** : change word (deletes the word and enters Insert mode).
* **ci"** : change everything inside double quotes.
* **ci(** : change everything inside parentheses.

## 6. Copying and Pasting (Yank & Paste)
* **y** : copy the selected text while in Visual mode.
* **yy** : copy the entire current line (without selecting it first).
* **yl** : copy the single letter under the cursor.
* **p** : paste text after the cursor (to the right, or on the line below).
* **P** : paste text before the cursor (to the left, or on the line above).

## 7. History (Undo & Redo)
* **u** : undo the last action (Ctrl + Z).
* **Ctrl + r** : redo the last undone action.

## 8. Save & Quit
* **:w** : save the file (write).
* **:q** : quit (fails if there are unsaved changes).
* **:q!** : quit without saving changes.
* **:wq** : save and quit.

# Aerospace window management

* **Alt + (Neovim directions)** : focus adjacent window.
* **Alt + Shift + (Neovim directions)** : move current window in that direction.
* **Alt + Cmd + [Workspace Number]** : switch to the specified workspace.
* **Alt + Cmd + Shift + [Workspace Number]** : move current window to that workspace.
* **Alt + Cmd + f** : toggle window between floating and tiling mode.

# Ghostty Tab Navigation

* **Cmd + d** : open a new tab.
* **Cmd + w** : close the current tab.
* **Cmd + Shift + [** : move to the previous tab (left).
* **Cmd + Shift + ]** : move to the next tab (right).
* **Cmd + [1-9]** : jump directly to a specific tab number.
