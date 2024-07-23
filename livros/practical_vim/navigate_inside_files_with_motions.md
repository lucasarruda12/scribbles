# Keep your fingers on the home row

- Vim is optimized for the touch typist. Lean to move around without removing your hands from the home row, and you´ll be able to operate vim quicker.

# Leave your right hand where it belongs

- Constantly reaching for the arrow keys should be desincorraged.

- It is best to get used to the `h`, `j`, `k` and `l` style of typing

# Distinguish between real lines and display lines

- Unlike other editors, vim makes a distinction between real lines and display lines. When the `wrap` setting is enabled, each line of text that exceeds the width of the window will display as wrapped, ensuring that no text is truncated from view.

- We can navigate up and down real lines using the `j` and `k` keys and display lines with `gj` and `gk`

| Command | Move Cursor |
| ------- | ----------- |
| `j`     |  To Down one real line |
| `gj`    |  To Down one display line |
| `k`     |  To Up one real line |
| `gk`    |  To Up one display line |
| `0`     |  To The first character of a real line |
| `g0`    |  To The first character of a display line |
| `^`     |  To The first nonblank character of a real line |
| `g^`    |  To The first nonblank character of a display line |
| `$`     |  To the end of a real line |
| `g$`    |  To The end of a display line |

- Note the pattern: if a key interacts with real lines, then prefixing it with g tells vim to act on display lines.

# Move word-wise

- Vim has two speeds for moving backward and forward word-wise. Both allow for a more rapid traversal than moving one column at a time.

| Command | Move Cursor |
| `w`     | Forward to start of next word |
| `b`     | Backward to start of current/previous word |
| `e`     | Forward to end of current/next word |
| `ge`    | Backward to end of previous word |

# Know your words from your WORDS

- word is any sequence of letters, digits and underscores
- WORD is any sequence of characters

- Any command used for words has an upper-case WORD command equivalent.

# Find by character

- Vim´s character search command allowsus to move quickly within a line, and they work beautifully in Operator-Pending mode

- The `f{char}` command searches the currently line for the specified character.

- Vim keeps track of the last search and it can be repeated using the `;` command.

- The `,` command can be used to go back to the previous match.

| Command   | Effect |
| --------- | ------ |
| `F{char}` | Backward to the previous occurrence of {char} |
| `t{char}` | Forward to the character before the next occurrence of char |
| `T{char}` | Backward to the character after the previous occurrence of {char} |

# Think like a scrabble player

- When using the character search commands, it´s better to choose target characters with low frequency of occurrences.

# Search to navigate

- The search command allows us to rapidly cover distances both large and small with very few keystrokes

# Trace your selection with precision text objects

- Text objects allow us to interact with parentheses, quotes, XML tags, and other common patters that appear in text.
