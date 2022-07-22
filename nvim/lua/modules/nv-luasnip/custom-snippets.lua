local ls = require "luasnip"

ls.snippets = {
  javascriptreact = {
    ls.parser.parse_snippet(
      "rtbs",
      "import '@testing-library/jest-dom'\n; import { render, screen, cleanup } from '@testing-library/react';\n import { ThemeProvider } from 'styled-components';\n import theme from '../../theme';\n\nconst setup = () => render(\n    <ThemeProvider theme={theme}>\n        <Header />\n    </ThemeProvider>\n);\n\n describe('<Header />', () => {\n    beforeEach(() => {\n    });\n\n    afterEach(() => {\n        cleanup();\n     });\n\n    it('should contain a navigation', () => {\n        setup();\n        const nav = screen.getByRole('navigation');\n        expect(nav).toBeInTheDocument();\n    });\n}); \n"
    )
  }
}
