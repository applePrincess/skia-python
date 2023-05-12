self:
{ pybind11, numpy }:

buildPythonPackage {
  pname = "skia-python";
  version = "unstable";
  src = ./.;

  propagatedBuildInputs = ([
    pybind11
    numpy
  ]) ++ (with pkgs; [
    gn
    self.skia
  ]);
}
