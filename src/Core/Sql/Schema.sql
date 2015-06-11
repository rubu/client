CREATE TABLE BlendMode (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Value TEXT);
CREATE TABLE Configuration (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT);
CREATE TABLE Chroma (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Value TEXT);
CREATE TABLE Device (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Address TEXT, Port INTEGER, Username TEXT, Password TEXT, Description TEXT, Version TEXT, Shadow TEXT, Channels INTEGER, ChannelFormats TEXT, PreviewChannel INTEGER, LockedChannel INTEGER);
CREATE TABLE Direction (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Value TEXT);
CREATE TABLE Format (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Width INTEGER, Height INTEGER, FramesPerSecond TEXT);
CREATE TABLE GpiPort (Id INTEGER PRIMARY KEY AUTO_INCREMENT, RisingEdge INTEGER, Action TEXT);
CREATE TABLE GpoPort (Id INTEGER PRIMARY KEY AUTO_INCREMENT, RisingEdge INTEGER, PulseLengthMillis INTEGER);
CREATE TABLE Library (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, DeviceId INTEGER, TypeId INTEGER, ThumbnailId INTEGER, Timecode TEXT);
CREATE TABLE OpenRecent (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Value VARCHAR(255) UNIQUE);
CREATE TABLE Preset (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT);
CREATE TABLE Thumbnail (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Data TEXT, Timestamp TEXT, Size TEXT);
CREATE TABLE Transition (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Value TEXT);
CREATE TABLE Tween (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Value TEXT);
CREATE TABLE Type (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Value TEXT);
CREATE TABLE OscOutput (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Address TEXT, Port INTEGER, Description TEXT);
CREATE TABLE AtemDevice (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Address TEXT, Description TEXT);
CREATE TABLE AtemSwitcher (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT);
CREATE TABLE AtemStep (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT);
CREATE TABLE AtemMixerStep (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT);
CREATE TABLE AtemAutoTransition (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT);
CREATE TABLE AtemKeyer (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT);
CREATE TABLE AtemVideoFormat (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT);
CREATE TABLE AtemAudioInputState (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT);
CREATE TABLE TriCasterProduct (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT);
CREATE TABLE TriCasterDevice (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Address TEXT, Port INTEGER, Description TEXT);
CREATE TABLE TriCasterStep (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT, Products TEXT);
CREATE TABLE TriCasterInput (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT, Products TEXT);
CREATE TABLE TriCasterAutoSpeed (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT, Products TEXT);
CREATE TABLE TriCasterAutoTransition (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT, Products TEXT);
CREATE TABLE TriCasterPreset (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT, Products TEXT);
CREATE TABLE TriCasterSource (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT, Products TEXT);
CREATE TABLE TriCasterSwitcher (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT, Products TEXT);
CREATE TABLE TriCasterNetworkTarget (Id INTEGER PRIMARY KEY AUTO_INCREMENT, Name TEXT, Value TEXT, Products TEXT);

INSERT INTO BlendMode (Value) VALUES('Normal');
INSERT INTO BlendMode (Value) VALUES('Lighten');
INSERT INTO BlendMode (Value) VALUES('Darken');
INSERT INTO BlendMode (Value) VALUES('Multiply');
INSERT INTO BlendMode (Value) VALUES('Average');
INSERT INTO BlendMode (Value) VALUES('Add');
INSERT INTO BlendMode (Value) VALUES('Subtract');
INSERT INTO BlendMode (Value) VALUES('Difference');
INSERT INTO BlendMode (Value) VALUES('Negation');
INSERT INTO BlendMode (Value) VALUES('Exclusion');
INSERT INTO BlendMode (Value) VALUES('Screen');
INSERT INTO BlendMode (Value) VALUES('Overlay');
INSERT INTO BlendMode (Value) VALUES('Soft_Light');
INSERT INTO BlendMode (Value) VALUES('Hard_Light');
INSERT INTO BlendMode (Value) VALUES('Color_Dodge ');
INSERT INTO BlendMode (Value) VALUES('Color_Burn');
INSERT INTO BlendMode (Value) VALUES('Linear_Dodge');
INSERT INTO BlendMode (Value) VALUES('Linear_Burn');
INSERT INTO BlendMode (Value) VALUES('Linear_Light');
INSERT INTO BlendMode (Value) VALUES('Vivid_Light');
INSERT INTO BlendMode (Value) VALUES('Pin_Light ');
INSERT INTO BlendMode (Value) VALUES('Hard_Mix');
INSERT INTO BlendMode (Value) VALUES('Reflect');
INSERT INTO BlendMode (Value) VALUES('Glow');
INSERT INTO BlendMode (Value) VALUES('Phoenix');
INSERT INTO BlendMode (Value) VALUES('Contrast');
INSERT INTO BlendMode (Value) VALUES('Saturation');
INSERT INTO BlendMode (Value) VALUES('Color');
INSERT INTO BlendMode (Value) VALUES('Luminosity');

INSERT INTO Configuration (Name, Value) VALUES('StartFullscreen', 'false');
INSERT INTO Configuration (Name, Value) VALUES('AutoRefreshLibrary', 'false');
INSERT INTO Configuration (Name, Value) VALUES('ShowThumbnailTooltip', 'true');
INSERT INTO Configuration (Name, Value) VALUES('ReverseOscTime', 'true');
INSERT INTO Configuration (Name, Value) VALUES('EnableOscInput', 'true');
INSERT INTO Configuration (Name, Value) VALUES('DisableInAndOutPoints', 'true');
INSERT INTO Configuration (Name, Value) VALUES('RefreshLibraryInterval', '60');
INSERT INTO Configuration (Name, Value) VALUES('GpiSerialPort', 'COM1');
INSERT INTO Configuration (Name, Value) VALUES('GpiBaudRate', '115200');
INSERT INTO Configuration (Name, Value) VALUES('OscPort', '6250');
INSERT INTO Configuration (Name, Value) VALUES('TriCasterPort', '5950');
INSERT INTO Configuration (Name, Value) VALUES('DelayType', 'Milliseconds');
INSERT INTO Configuration (Name, Value) VALUES('TriCasterProduct', 'TriCaster 8000');
INSERT INTO Configuration (Name, Value) VALUES('Theme', 'Flat');
INSERT INTO Configuration (Name, Value) VALUES('RundownRepository', '');
INSERT INTO Configuration (Name, Value) VALUES('RepositoryPort', '8250');
INSERT INTO Configuration (Name, Value) VALUES('PreviewOnAutoStep', 'false');
INSERT INTO Configuration (Name, Value) VALUES('ClearDelayedCommandsOnAutoStep', 'false');
INSERT INTO Configuration (Name, Value) VALUES('ShowAudioLevelsPanel', 'true');
INSERT INTO Configuration (Name, Value) VALUES('ShowPreviewPanel', 'true');
INSERT INTO Configuration (Name, Value) VALUES('ShowLivePanel', 'true');
INSERT INTO Configuration (Name, Value) VALUES('ShowDurationPanel', 'false');
INSERT INTO Configuration (Name, Value) VALUES('StoreThumbnailsInDatabase', 'true');
INSERT INTO Configuration (Name, Value) VALUES('MarkUsedItems', 'false');
INSERT INTO Configuration (Name, Value) VALUES('UseFreezeOnLoad', 'false');
INSERT INTO Configuration (Name, Value) VALUES('DisableAudioInStream', 'true');
INSERT INTO Configuration (Name, Value) VALUES('StreamQuality', '25');
INSERT INTO Configuration (Name, Value) VALUES('NetworkCache', '1000');
INSERT INTO Configuration (Name, Value) VALUES('StreamPort', '9250');
INSERT INTO Configuration (Name, Value) VALUES('LogLevel', '-1');
INSERT INTO Configuration (Name, Value) VALUES('DatabaseVersion', '208');

INSERT INTO Chroma (Value) VALUES('None');
INSERT INTO Chroma (Value) VALUES('Green');
INSERT INTO Chroma (Value) VALUES('Blue');

INSERT INTO Direction (Value) VALUES('RIGHT');
INSERT INTO Direction (Value) VALUES('LEFT');

INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('PAL', 720, 576, '25');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('NTSC', 720, 486, '29.97');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('576p2500', 1024, 576, '25');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('720p2398', 1280, 720, '23.98');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('720p2400', 1280, 720, '24');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('720p2500', 1280, 720, '25');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('720p5000', 1280, 720, '50');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('720p2997', 1280, 720, '29.97');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('720p5994', 1280, 720, '59.94');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('720p3000', 1280, 720, '30');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('720p6000', 1280, 720, '60');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080p2398', 1920, 1080, '23.98');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080p2400', 1920, 1080, '24');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080i5000', 1920, 1080, '25');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080i5994', 1920, 1080, '59.94');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080i6000', 1920, 1080, '30');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080p2500', 1920, 1080, '25');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080p2997', 1920, 1080, '29.97');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080p3000', 1920, 1080, '30');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080p5000', 1920, 1080, '50');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080p5994', 1920, 1080, '59.94');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1080p6000', 1920, 1080, '60');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1556p2398', 2048, 1556, '23.98');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1556p2400', 2048, 1556, '24');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('1556p2500', 2048, 1556, '25');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('2160p2398', 3840, 2160, '23.98');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('2160p2400', 3840, 2160, '24');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('2160p2500', 3840, 2160, '25');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('2160p2997', 3840, 2160, '29.97');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('2160p3000', 3840, 2160, '30');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('dci1080p2398', 2048, 1080, '23.98');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('dci1080p2400', 2048, 1080, '24');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('dci1080p2500', 2048, 1080, '25');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('dci2160p2398', 4096, 2160, '23.98');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('dci2160p2400', 4096, 2160, '24');
INSERT INTO Format (Name, Width, Height, FramesPerSecond) VALUES('dci2160p2500', 4096, 2160, '25');

INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Stop');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Play');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Play Now');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Pause / Resume');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Load');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Next');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Update');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Invoke');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Preview');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Clear');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Clear Video Layer');
INSERT INTO GpiPort (RisingEdge, Action) VALUES(1, 'Clear Channel');

INSERT INTO GpoPort (RisingEdge, PulseLengthMillis) VALUES(1, 100);
INSERT INTO GpoPort (RisingEdge, PulseLengthMillis) VALUES(1, 100);
INSERT INTO GpoPort (RisingEdge, PulseLengthMillis) VALUES(1, 100);
INSERT INTO GpoPort (RisingEdge, PulseLengthMillis) VALUES(1, 100);
INSERT INTO GpoPort (RisingEdge, PulseLengthMillis) VALUES(1, 100);
INSERT INTO GpoPort (RisingEdge, PulseLengthMillis) VALUES(1, 100);
INSERT INTO GpoPort (RisingEdge, PulseLengthMillis) VALUES(1, 100);
INSERT INTO GpoPort (RisingEdge, PulseLengthMillis) VALUES(1, 100);

INSERT INTO Transition (Value) VALUES('CUT');
INSERT INTO Transition (Value) VALUES('MIX');
INSERT INTO Transition (Value) VALUES('PUSH');
INSERT INTO Transition (Value) VALUES('SLIDE');
INSERT INTO Transition (Value) VALUES('WIPE');

INSERT INTO AtemAudioInputState (Name, Value) VALUES('Off', '0');
INSERT INTO AtemAudioInputState (Name, Value) VALUES('On', '1');
INSERT INTO AtemAudioInputState (Name, Value) VALUES('AFV', '2');

INSERT INTO AtemStep (Name, Value) VALUES('Background', 'background');
INSERT INTO AtemStep (Name, Value) VALUES('DSK 1', '0');
INSERT INTO AtemStep (Name, Value) VALUES('DSK 2', '1');

INSERT INTO AtemMixerStep (Name, Value) VALUES('1', '0');
INSERT INTO AtemMixerStep (Name, Value) VALUES('2', '1');

INSERT INTO AtemKeyer (Name, Value) VALUES('Downstream Key 1', '0');
INSERT INTO AtemKeyer (Name, Value) VALUES('Downstream Key 2', '1');
INSERT INTO AtemKeyer (Name, Value) VALUES('Upstream Key 1', '2');
INSERT INTO AtemKeyer (Name, Value) VALUES('Upstream Key 2', '3');
INSERT INTO AtemKeyer (Name, Value) VALUES('Upstream Key 3', '4');
INSERT INTO AtemKeyer (Name, Value) VALUES('Upstream Key 4', '5');
INSERT INTO AtemAutoTransition (Name, Value) VALUES('MIX', '0');
INSERT INTO AtemAutoTransition (Name, Value) VALUES('DIP', '1');
INSERT INTO AtemAutoTransition (Name, Value) VALUES('WIPE', '2');
INSERT INTO AtemAutoTransition (Name, Value) VALUES('STING', '3');
INSERT INTO AtemAutoTransition (Name, Value) VALUES('DVE', '4');

INSERT INTO AtemSwitcher (Name, Value) VALUES('Program', 'pgm');
INSERT INTO AtemSwitcher (Name, Value) VALUES('Preview', 'prev');

INSERT INTO AtemVideoFormat (Name, Value) VALUES('525 59.94i NTSC', '0');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('625 50i PAL', '1');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('525 59.94i 16:9', '2');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('625 50i 16:9', '3');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('720 50p', '4');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('720 59.94p', '5');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('1080 50i', '6');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('1080 59.94i', '7');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('1080 23.98p', '8');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('1080 24p', '9');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('1080 25p', '10');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('1080 29.97p', '11');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('1080 50p', '12');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('1080 59.94p', '13');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('Ultra HD 23.98p', '14');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('Ultra HD 24p', '15');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('Ultra HD 25p', '16');
INSERT INTO AtemVideoFormat (Name, Value) VALUES('Ultra HD 29.97p', '17');

INSERT INTO TriCasterProduct (Name) VALUES('TriCaster 410');
INSERT INTO TriCasterProduct (Name) VALUES('TriCaster 460');
INSERT INTO TriCasterProduct (Name) VALUES('TriCaster 850');
INSERT INTO TriCasterProduct (Name) VALUES('TriCaster 860');
INSERT INTO TriCasterProduct (Name) VALUES('TriCaster 8000');

INSERT INTO TriCasterStep (Name, Value, Products) VALUES('Background', 'background', 'TriCaster 850');
INSERT INTO TriCasterStep (Name, Value, Products) VALUES('Background', 'main_background', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterStep (Name, Value, Products) VALUES('DSK 1', 'overlay0', 'TriCaster 850');
INSERT INTO TriCasterStep (Name, Value, Products) VALUES('DSK 2', 'overlay1', 'TriCaster 850');
INSERT INTO TriCasterStep (Name, Value, Products) VALUES('DSK 1', 'main_dsk1', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterStep (Name, Value, Products) VALUES('DSK 2', 'main_dsk2', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterStep (Name, Value, Products) VALUES('DSK 3', 'main_dsk3', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterStep (Name, Value, Products) VALUES('DSK 4', 'main_dsk4', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');

INSERT INTO TriCasterInput (Name, Value, Products) VALUES('DDR 1', 'ddr', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('DDR 2', 'ddr2', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Net 1', 'net', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Net 2', 'net2', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Still', 'stills', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Title', 'titles', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Frame Buffer', 'frm bfr', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Black', 'black', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Input 1', 'input1', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Input 2', 'input2', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Input 3', 'input3', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Input 4', 'input4', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Input 5', 'input5', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Input 6', 'input6', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Input 7', 'input7', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Input 8', 'input8', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Virtual Input 1', 'v1', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Virtual Input 2', 'v2', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Virtual Input 3', 'v3', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Virtual Input 4', 'v4', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Virtual Input 5', 'v5', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Virtual Input 6', 'v6', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Virtual Input 7', 'v7', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterInput (Name, Value, Products) VALUES('Virtual Input 8', 'v8', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');

INSERT INTO TriCasterAutoSpeed (Name, Value, Products) VALUES('Default', '', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterAutoSpeed (Name, Value, Products) VALUES('Slow', 'slow', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterAutoSpeed (Name, Value, Products) VALUES('Medium', 'medium', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterAutoSpeed (Name, Value, Products) VALUES('Fast', 'fast', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');

INSERT INTO TriCasterAutoTransition (Name, Value, Products) VALUES('Default', '', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterAutoTransition (Name, Value, Products) VALUES('Preset 1', '0', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterAutoTransition (Name, Value, Products) VALUES('Preset 2', '1', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterAutoTransition (Name, Value, Products) VALUES('Preset 3', '2', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterAutoTransition (Name, Value, Products) VALUES('Preset 4', '3', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterAutoTransition (Name, Value, Products) VALUES('Preset 5', '4', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterAutoTransition (Name, Value, Products) VALUES('Preset 6', '5', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterAutoTransition (Name, Value, Products) VALUES('Preset 7', '6', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');

INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 1', '0', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 2', '1', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 3', '2', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 4', '3', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 5', '4', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 6', '5', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 7', '6', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 8', '7', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 9', '8', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 10', '9', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 11', '10', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 12', '11', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 13', '12', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 14', '13', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterPreset (Name, Value, Products) VALUES('Preset 15', '14', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');

INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Switcher', 'main', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('DDR 1', 'ddr', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('DDR 2', 'ddr2', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Still', 'stills', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Title', 'titles', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Sound', 'sound', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Audiomixer', 'audiomixer', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Virtual Input 1', 'v1', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Virtual Input 2', 'v2', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Virtual Input 3', 'v3', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Virtual Input 4', 'v4', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Virtual Input 5', 'v5', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Virtual Input 6', 'v6', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Virtual Input 7', 'v7', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('Virtual Input 8', 'v8', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('PTZ 1', 'ptz_input1', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('PTZ 2', 'ptz_input2', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('PTZ 3', 'ptz_input3', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('PTZ 4', 'ptz_input4', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('PTZ 5', 'ptz_input5', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('PTZ 6', 'ptz_input6', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('PTZ 7', 'ptz_input7', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSource (Name, Value, Products) VALUES('PTZ 8', 'ptz_input8', 'TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');

INSERT INTO TriCasterSwitcher (Name, Value, Products) VALUES('Program', 'pgm', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterSwitcher (Name, Value, Products) VALUES('Preview', 'prev', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');

INSERT INTO TriCasterNetworkTarget (Name, Value, Products) VALUES('Net 1', 'net', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');
INSERT INTO TriCasterNetworkTarget (Name, Value, Products) VALUES('Net 2', 'net2', 'TriCaster 850, TriCaster 410, TriCaster 460, TriCaster 860, TriCaster 8000');

INSERT INTO Tween (Value) VALUES('Linear');
INSERT INTO Tween (Value) VALUES('EaseNone');
INSERT INTO Tween (Value) VALUES('EaseInQuad');
INSERT INTO Tween (Value) VALUES('EaseOutQuad');
INSERT INTO Tween (Value) VALUES('EaseInOutQuad');
INSERT INTO Tween (Value) VALUES('EaseOutInQuad');
INSERT INTO Tween (Value) VALUES('EaseInCubic');
INSERT INTO Tween (Value) VALUES('EaseOutCubic');
INSERT INTO Tween (Value) VALUES('EaseInOutCubic');
INSERT INTO Tween (Value) VALUES('EaseOutInCubic');
INSERT INTO Tween (Value) VALUES('EaseInQuart');
INSERT INTO Tween (Value) VALUES('EaseOutQuart');
INSERT INTO Tween (Value) VALUES('EaseInOutQuart');
INSERT INTO Tween (Value) VALUES('EaseOutInQuart');
INSERT INTO Tween (Value) VALUES('EaseInQuint');
INSERT INTO Tween (Value) VALUES('EaseOutQuint');
INSERT INTO Tween (Value) VALUES('EaseInOutQuint');
INSERT INTO Tween (Value) VALUES('EaseOutInQuint');
INSERT INTO Tween (Value) VALUES('EaseInSine');
INSERT INTO Tween (Value) VALUES('EaseOutSine');
INSERT INTO Tween (Value) VALUES('EaseInOutSine');
INSERT INTO Tween (Value) VALUES('EaseOutInSine');
INSERT INTO Tween (Value) VALUES('EaseInExpo');
INSERT INTO Tween (Value) VALUES('EaseOutExpo');
INSERT INTO Tween (Value) VALUES('EaseInOutExpo');
INSERT INTO Tween (Value) VALUES('EaseOutInExpo');
INSERT INTO Tween (Value) VALUES('EaseInCirc');
INSERT INTO Tween (Value) VALUES('EaseOutCirc');
INSERT INTO Tween (Value) VALUES('EaseInOutCirc');
INSERT INTO Tween (Value) VALUES('EaseOutInCirc');
INSERT INTO Tween (Value) VALUES('EaseInElastic');
INSERT INTO Tween (Value) VALUES('EaseOutElastic');
INSERT INTO Tween (Value) VALUES('EaseInOutElastic');
INSERT INTO Tween (Value) VALUES('EaseOutInElastic');
INSERT INTO Tween (Value) VALUES('EaseInBack');
INSERT INTO Tween (Value) VALUES('EaseOutBack');
INSERT INTO Tween (Value) VALUES('EaseInOutBack');
INSERT INTO Tween (Value) VALUES('EaseOutInBack');
INSERT INTO Tween (Value) VALUES('EaseOutBounce');
INSERT INTO Tween (Value) VALUES('EaseInBounce');
INSERT INTO Tween (Value) VALUES('EaseInOutBounce');
INSERT INTO Tween (Value) VALUES('EaseOutInBounce');

INSERT INTO Type (Value) VALUES('AUDIO');
INSERT INTO Type (Value) VALUES('DATA');
INSERT INTO Type (Value) VALUES('MOVIE');
INSERT INTO Type (Value) VALUES('STILL');
INSERT INTO Type (Value) VALUES('TEMPLATE');
