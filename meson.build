project(
  'celtic-magic-button',
  ['vala', 'c'],
  version: '0.0.1'
)

applet_dir = join_paths(get_option('prefix'), get_option('libdir'), 'budgie-desktop', 'plugins', meson.project_name())
icon_dir = join_paths(get_option('prefix'), 'share', 'icons', 'hicolor', 'scalable', 'apps')

srcs = [
  'DBusInterface.vala',
  'CelticMagicButtonApplet.vala'
]

shared_library(
  'celticmagicbuttonapplet',
  srcs,
  dependencies: [
    dependency('gtk+-3.0'),
    dependency('budgie-1.0', version: '>=2'),
    dependency('libpeas-1.0', version: '>=1.8.0')
  ],
  vala_args: [
    '--pkg', 'libpeas-1.0',
    '--pkg', 'gtk+-3.0'
  ],
  install: true,
  install_dir: applet_dir
)

install_data(
  'CelticMagicButtonApplet.plugin',
  install_dir: applet_dir
)

install_data(
  'celtic-magic-button.svg',
  install_dir: icon_dir
)

meson.add_install_script('post-install.sh')

