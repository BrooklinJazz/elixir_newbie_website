const colors = require("tailwindcss/colors");

module.exports = {
  mode: "jit",
  purge: ["./js/**/*.js", "../lib/*_web/**/*.*ex"],
  theme: {
    extend: {
      colors: {
        transparent: "transparent",
        current: "currentColor",
        linkedin: "#3b5998",
        twitter: "#1da1f2",
        primary: "#a801a1",
        secondary: "#5BDFE4",
        // background: "#1C1B1D",
        background: "#1F2028",
        header: "#1F2028",
        footer: "#1F2028",
        surface: "#1F2028",
        black: colors.black,
        white: colors.white,
      },
      keyframes: {
        "fade-in": {
          "0%": {
            opacity: "0",
            transform: "translateY(-30px)",
          },
          "100%": {
            opacity: "1",
            transform: "translateY(0)",
          },
        },
      },
      animation: {
        "fade-in": "fade-in 1s",
      },
    },
  },
  "headwind.runOnSave": false,
  variants: {},
  plugins: [],
};
