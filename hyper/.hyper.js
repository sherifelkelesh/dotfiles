const palette = {
  background: { hex: '#282a36', rgb: '40 42 54', hsl: '231° 15% 18%' },
  currentLine: { hex: '#44475a', rgb: '68 71 90', hsl: '232° 14% 31%' },
  selection: { hex: '#44475a', rgb: '68 71 90', hsl: '232° 14% 31%' },
  foreground: { hex: '#f8f8f2', rgb: '248 248 242', hsl: '60° 30% 96%' },
  comment: { hex: '#6272a4', rgb: '98 114 164', hsl: '225° 27% 51%' },
  cyan: { hex: '#8be9fd', rgb: '139 233 253', hsl: '191° 97% 77%' },
  green: { hex: '#50fa7b', rgb: '80 250 123', hsl: '135° 94% 65%' },
  orange: { hex: '#ffb86c', rgb: '255 184 108', hsl: '31° 100% 71%' },
  pink: { hex: '#ff79c6', rgb: '255 121 198', hsl: '326° 100% 74%' },
  purple: { hex: '#bd93f9', rgb: '189 147 249', hsl: '265° 89% 78%' },
  red: { hex: '#ff5555', rgb: '255 85 85', hsl: '0° 100% 67%' },
  yellow: { hex: '#f1fa8c', rgb: '241 250 140', hsl: '65° 92% 76%' },
}

module.exports = {
  config: {
    fontSize: 13,
    windowSize: [680, 450],
    fontFamily: 'Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',
    cursorColor: `rgba(${palette.foreground.hex}, 0.8)`,
    cursorShape: 'UNDERLINE',
    foregroundColor: palette.foreground.hex,
    backgroundColor: `rgba(${palette.background.hex}, 0.8)`,
    borderColor: '',
    css: ``,
    termCSS: `
      body > x-screen > div:nth-child(1) > x-row:nth-child(6) span:first-child {
        font-size: 20px;
      }
    `,
    padding: '2px 4px',
    colors: {
      black: palette.red.comment,
      red: palette.red.hex,
      green: palette.green.hex,
      yellow: palette.yellow.hex,
      blue: palette.purple.hex,
      magenta: palette.pink.hex,
      cyan: palette.cyan.hex,
      white: palette.foreground.hex,
      lightBlack: palette.red.comment,
      lightRed: palette.red.hex,
      lightGreen: palette.green.hex,
      lightYellow: palette.yellow.hex,
      lightBlue: palette.purple.hex,
      lightMagenta: palette.pink.hex,
      lightCyan: palette.cyan.hex,
      lightWhite: palette.foreground.hex,
    },
    shell: '',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false,
  },
  plugins: [
    'hyperlinks',
  ],
  localPlugins: [],
}
