release:
	g++.exe -o Build/release/game.exe Game/*.cpp Engine/include/*.cpp Engine/include/Libraries/include/glad/glad.c -lglfw3 -mwindows
	@echo 'created game successfully!'
	touch Build/release/Shaders/default.frag
	touch Build/release/Shaders/default.vert
	touch Build/release/Shaders/light.frag
	touch Build/release/Shaders/light.vert
	@echo 'created shaders successfully!'
	rm Build/release/Shaders/default.frag
	rm Build/release/Shaders/default.vert
	rm Build/release/Shaders/light.frag
	rm Build/release/Shaders/light.vert
	@echo 'cleaned old shaders successfully!'
	cp Engine/Shaders/light.vert Build/release/Shaders/light.vert
	cp Engine/Shaders/light.frag Build/release/Shaders/light.frag
	cp Engine/Shaders/default.vert Build/release/Shaders/default.vert
	cp Engine/Shaders/default.frag Build/release/Shaders/default.frag
	@echo 'built shaders successfully!'
	cp Game/Resources/Textures/block.png Build/debug/Resources/Textures/block.png
	cp Game/Resources/Textures/planksSpec.png Build/debug/Resources/Textures/planksSpec.png
	cp Game/Resources/Textures/planks.png Build/debug/Resources/Textures/planks.png
	@echo 'Images Created and Compiled successfully'
	@echo 'Game compiled successfully!'
debug:
	g++.exe -o Build/debug/game.exe Game/*.cpp Engine/include/*.cpp Engine/include/Libraries/include/glad/glad.c -lglfw3
	@echo 'created game successfully!'
	touch Build/debug/Shaders/default.frag
	touch Build/debug/Shaders/default.vert
	touch Build/debug/Shaders/light.frag
	touch Build/debug/Shaders/light.vert
	@echo 'created shaders successfully!'
	rm Build/debug/Shaders/default.frag
	rm Build/debug/Shaders/default.vert
	rm Build/debug/Shaders/light.frag
	rm Build/debug/Shaders/light.vert
	@echo 'cleaned old shaders successfully!'
	cp Engine/Shaders/light.vert Build/debug/Shaders/light.vert
	cp Engine/Shaders/light.frag Build/debug/Shaders/light.frag
	cp Engine/Shaders/default.vert Build/debug/Shaders/default.vert
	cp Engine/Shaders/default.frag Build/debug/Shaders/default.frag
	@echo 'built shaders successfully!'
	cp Game/Resources/Textures/block.png Build/debug/Resources/Textures/block.png
	cp Game/Resources/Textures/planksSpec.png Build/debug/Resources/Textures/planksSpec.png
	cp Game/Resources/Textures/planks.png Build/debug/Resources/Textures/planks.png
	@echo 'Images Created and Compiled successfully'
	@echo 'Game compiled successfully!'

clean:
	rm Build/release/Resources/Textures/block.png
	rm Build/release/Resources/Textures/planksSpec.png
	rm Build/release/Resources/Textures/planks.png
	@echo 'Images Cleaned successfully'
	rm Build/release/Shaders/default.frag
	rm Build/release/Shaders/default.vert
	rm Build/release/Shaders/light.frag
	rm Build/release/Shaders/light.vert
	@echo 'Cleaned Shaders successfully!'
	rm Build/debug/Resources/Textures/block.png
	rm Build/debug/Resources/Textures/planksSpec.png
	rm Build/debug/Resources/Textures/planks.png
	@echo 'Images Cleaned successfully'
	rm Build/debug/Shaders/default.frag
	rm Build/debug/Shaders/default.vert
	rm Build/debug/Shaders/light.frag
	rm Build/debug/Shaders/light.vert
	@echo 'Cleaned Shaders successfully!'