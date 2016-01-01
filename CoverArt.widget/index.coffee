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
<div>
	<div class='album'>
		<img src='CoverArt.widget/images/albumart.jpg' width='300' height='300'>
	</div>
</div>
"""

# Update the rendered output.
update: (output, domEl) ->
	image = $(domEl).find('img')
	image.attr('src', 'CoverArt.widget/images/albumart.jpg')

