import unittest
from mylib.name import getName

class TestGetName(unittest.TestCase):

	def testValue(self) -> None:
		self.assertEqual(getName(), "Bazel")

if __name__ == '__main__':
	unittest.main()
