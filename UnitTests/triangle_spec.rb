require '../Examples/triangle'

RSpec.describe Triangle do
    it 'Creates a new triangle with correct sides' do
        new_triangle = Triangle.new(12,12,21)

        expect((new_triangle.sideA + new_triangle.sideB)). to be > new_triangle.sideC
    end

    it 'Check perimeter value is correct' do
        new_triangle = Triangle.new(2,3,2)

        expect(new_triangle.perimeter).to eq 2+3+2
    end

    it 'Check area value is not nil' do
        new_triangle = Triangle.new(3,5,4)

        expect(new_triangle.area).not_to be_zero
    end

    it 'Checks type of triangle' do
        new_triangle = Triangle.new(3,4,5)

        expect(new_triangle.typeOfTriangle).to eq 'Right'
    end
end