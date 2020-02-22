function output = relu(z)
in = (z < 0);
z(in) = 0;
output = z;
end