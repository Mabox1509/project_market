function scr_towards(_a, _b, _spd) {
    if (_a < _b) {
        _a += min(_spd, _b - _a);
    } else if (_a > _b) {
        _a -= min(_spd, _a - _b);
    }
    return _a;
}
