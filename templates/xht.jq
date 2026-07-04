[
	"<!DOCTYPE\nhtml><html\nxmlns='http://www.w3.org/1999/xhtml'\nlang='en'><head><meta\ncharset='utf-8'/><meta\nname='author'\ncontent='https://orcid.org/0009-0001-0977-2029'/><meta\nname='color-scheme'\ncontent='dark light'/><meta\nname='generator'\ncontent='",
	$version,
	"'/><meta\nname='viewport'\ncontent='width=device-width'/><link\nrel='icon'\nhref=\"data:image/svg+xml,%3Csvg%0Axmlns='http://www.w3.org/2000/svg'%0AviewBox='0,0,9,9'%0Afill='url(%23g)'%3E%3ClinearGradient%0Aid='g'%3E%3Cstop%0Astop-color='red'/%3E%3Cstop%0Astop-opacity='.3'%0Astop-color='red'%0Aoffset='1'/%3E%3C/linearGradient%3E%3Cpath%0Atransform='matrix(-1,0,0,1,9,0)'%0Ad='M3,1H1V6H3L5,5H8V2H5z'/%3E%3Cpath%0Ad='M6,6H8V8H1V5H4z'/%3E%3C/svg%3E\"/>",
	.head,
	if $css then "<style>\n\($css)</style>" else "" end,
	"</head><body>",
	.body,
	if $javascript then "<script>\n\($javascript)</script>" else "" end,
	"</body></html>"
] | join("")
