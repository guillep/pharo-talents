as yet unclassified
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		baseline: 'AtomicClassInstaller' with: [ spec
			repository: 'github://tesonep/pharo-AtomicClassInstaller/mc';
			loads: 'Shift-ClassBuilder' ];

		package: 'Talents'
			with: [ spec requires: #(AtomicClassInstaller) ];
		package: 'Talents-Tests'
			with: [ spec requires: #(core) ];

		group: 'core'
			with: #(Talents);
		group: 'test'
			with: #('Talents-Tests')
	]