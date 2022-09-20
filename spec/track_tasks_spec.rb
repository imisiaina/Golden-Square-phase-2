require 'track_tasks'

RSpec.describe TaskTracker do
    describe 'list' do
        it "displays the list of tasks" do
            track = TaskTracker.new
            track.add("Wash the car")
            track.add("Take out the trash")
            expect(track.list).to eq "Tasks: Wash the car, Take out the trash"
        end
    end

    describe 'add' do
        context "When the given task is empty" do
            it "returns an error: 'Please input a task" do
                track = TaskTracker.new
                expect{track.add("")}.to raise_error "Please input a task"
            end
        end

        it "returns the given string" do
            track = TaskTracker.new
            expect(track.add("Take out the trash")).to eq "Take out the trash"
        end
    end

    describe 'completed' do
        context "When task is marked as completed" do
            it "removes task from the list of tasks" do
                track = TaskTracker.new
                track.add("Wash the car")
                track.add("Take out the trash")
                track.add("Walk the dog")
                expect(track.completed("Take out the trash")).to eq "Tasks: Wash the car, Walk the dog"
            end
        end
    end
end