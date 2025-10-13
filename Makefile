# Install using:
#
#   pip install pygments
#
# built in styles: ['monokai', 'manni', 'rrt', 'perldoc', 'borland', 'colorful',
# 'default', 'murphy', 'vs', 'trac', 'tango', 'fruity', 'autumn', 'bw', 'emacs',
# 'vim', 'pastie', 'friendly', 'native']

pygments:
	@echo "Generating pygments stylesheets..."
	python -c "from pygments.formatters import HtmlFormatter; print(HtmlFormatter(style='monokai').get_style_defs('.highlight'))" > static/css/pygments-dark.css
	python -c "from pygments.formatters import HtmlFormatter; print(HtmlFormatter(style='default').get_style_defs('.highlight'))" > static/css/pygments-light.css
	@echo "Patching dark mode to remove hardcoded background..."
	sed -i 's/.highlight { background: #272822; color: #f8f8f2 }/.highlight { color: #f8f8f2 }/' static/css/pygments-dark.css
	@echo "Done! Pygments stylesheets generated and patched."
