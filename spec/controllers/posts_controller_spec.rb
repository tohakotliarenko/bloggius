require 'spec_helper'

describe PostsController do

it 'should create a new post' do

	#post = Post.create(title: '12345', text: 'sdsf')
	#Post.all.count.should == 1

	post :create, :post => {title: 'sdfsd', text: 'sdfsfd'}
	Post.all.count.should == 1

	post = Post.first
	response.should redirect_to post_path(post)

end

it 'should not create a new post' do

	#post = Post.create(title: '12345', text: 'sdsf')
	#Post.all.count.should == 1

	post :create, :post => { text: 'sdfsfd'}
	Post.all.count.should == 0

	response.should render_template("new")

end

it 'should delete the post' do

	post = Post.create(title: '12345', text: 'sdsf')
	#Post.all.count.should == 1

	#post :create, :post => { text: 'sdfsfd'}
	delete :destroy, :id => post.id

	Post.all.count.should == 0

	#response.should render_template("new")

end


end
