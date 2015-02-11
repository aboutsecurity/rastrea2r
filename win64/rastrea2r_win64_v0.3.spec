# -*- mode: python -*-
a = Analysis(['rastrea2r_win64_v0.3.py'],
             pathex=['Z:\\ivalenzuela\\github\\aboutsecurity\\rastrea2r\\win64'],
             hiddenimports=[],
             hookspath=None,
             runtime_hooks=None)
pyz = PYZ(a.pure)
exe = EXE(pyz,
          a.scripts,
          exclude_binaries=True,
          name='rastrea2r_win64_v0.3.exe',
          debug=False,
          strip=None,
          upx=True,
          console=True )
coll = COLLECT(exe,
               a.binaries,
               a.zipfiles,
               a.datas,
               strip=None,
               upx=True,
               name='rastrea2r_win64_v0.3')
