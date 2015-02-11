# -*- mode: python -*-
a = Analysis(['rastrea2r_osx.py'],
             pathex=['/Users/ivalenzuela/github/aboutsecurity/rastrea2r/osx'],
             hiddenimports=[],
             hookspath=None,
             runtime_hooks=None)
pyz = PYZ(a.pure)
exe = EXE(pyz,
          a.scripts,
          exclude_binaries=True,
          name='rastrea2r_osx',
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
               name='rastrea2r_osx')
