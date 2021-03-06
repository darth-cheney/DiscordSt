support
createDirectoryWithSubDirectories
	"Return a directory that includes two subdirectories, each one two files."
	<return: #FileReference>
	| dir file mainDir |
	mainDir := (rootDir / 'mainDir') createDirectory.
	dir := (mainDir / 'dir1') createDirectory.
	file := dir / 'file1.txt'.
	file writeStreamDo: [ :stream | stream << 'file 1 contents with ™' ].
	file := dir / 'file2.txt'.
	file writeStreamDo: [ :stream | stream << 'file 2 contents' ].
	dir := (mainDir / 'dir2') createDirectory.
	file := dir / 'file3.txt'.
	file writeStreamDo: [ :stream | stream << 'file 3 contents' ].
	file := dir / 'file4.txt'.
	file writeStreamDo: [ :stream | stream << 'file 4 contents' ].
	^ mainDir