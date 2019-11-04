import { keyboards }   from '../data/keyboards.js';

test('keyboard strings to be correct are correct for the core 4.0', () => {
	const result = keyboards; 
	expect(result).toMatchSnapshot();
});

