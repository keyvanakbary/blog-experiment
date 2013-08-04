require 'spec_helper'

describe Slugifier do

  it 'turns spaces into hyphens' do
    slug = Slugifier.slugify('This is a test')
    expect(slug).to eq 'this-is-a-test'
  end

  it 'turns invalid chars into hyphens' do
    slug = Slugifier.slugify('This is á test')
    expect(slug).to eq 'this-is-test'
  end
end