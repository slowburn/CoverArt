#--------------------------------------------------------------------------------------
# A widget that shows the cover of the album currently playing in iTunes
# 2015 - Andreas Schaefer - @slowbiex
#--------------------------------------------------------------------------------------

# Copy current album cover to directory
command: "osascript 'CoverArt.widget/GetCoverArt.scpt'"

# Set the refresh frequency (milliseconds).
refreshFrequency: 20000

style: """
	top: 20px
	left: 20px
	color: #fff
	
	.album
		width: 300px
		height: 300px
		border: 1px solid #fff
"""

render: -> """
<div id='cover'></div>
"""

# Update the rendered output.
update: (output, domEl) ->
	mydiv = $(domEl).find('div')
	html = ''
	
	html += "<div class='album'>"
	html += "<img src='CoverArt.widget/images/albumart.jpg' width='300' height='300'>"
	html += "</div>"
	
	# Set the output
	mydiv.html(html)

