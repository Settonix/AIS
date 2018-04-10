import React from "react";
import {
  List,
  Datagrid,
  Edit,
  Create,
  SimpleForm,
  DateField,
  TextField,
  EditButton,
  DisabledInput,
  TextInput,
  NumberInput,
  LongTextInput,
  DateInput
} from "admin-on-rest";
import BookIcon from "material-ui/svg-icons/action/book";
export const PostIcon = BookIcon;

export const name = "companies";
export const list = props => (
  <List {...props}>
    <Datagrid>
      <TextField source="registration_num" />
      <TextField source="name" />
    </Datagrid>
  </List>
);

const StockTitle = ({ record }) => {
  return <span>Post {record ? `"${record.title}"` : ""}</span>;
};

export const edit = props => (
  <Edit title={<StockTitle />} {...props}>
    <SimpleForm>
      <DisabledInput source="registration_num" />
      <TextInput source="name" />
      <TextInput source="own_name" />
      <TextInput source="own_surname" />
      <TextInput source="Own_patronymic" />
      <TextInput source="start_budget" />
      
    </SimpleForm>
  </Edit>
);

export const create = props => (
  <Create title="Create a Company" {...props}>
    <SimpleForm redirect="list">
    <NumberInput source="id" />
    
      <TextInput source="name" />
      <TextInput source="own_name" />
      <TextInput source="own_surname" />
      <NumberInput source="start_budget" />
  
    </SimpleForm>
  </Create>
);
