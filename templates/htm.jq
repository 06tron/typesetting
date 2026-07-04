[
	"<!DOCTYPE\nhtml><html\nlang=en><meta\ncharset=utf-8><meta\nname=author\ncontent=https://orcid.org/0009-0001-0977-2029><meta\nname=color-scheme\ncontent='dark light'><meta\nname=generator\ncontent=",
	$version,
	"><meta\nname=viewport\ncontent='width=device-width'>",
	.head,
	if $css then "<style>\n\($css)</style>" else "" end,
	.body,
	if $javascript then "<script>\n\($javascript)</script>" else "" end
] | join("")
